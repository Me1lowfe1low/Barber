//
//  NewsRepository.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 20.01.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class NewsRepository: ObservableObject {
    private let path: String = "News"
    private let store = Firestore.firestore()
    @Published var newsList: [NewsModel] = []
    
    init() {
        get()
    }
    
    func add(_ news: NewsModel) {
        do {
            _ = try store.collection(path).addDocument(from: news)
        }
        catch {
            fatalError("Unable to add news piece: \(error.localizedDescription)")
        }
    }
    
    func get() {
        store.collection(path)
            .addSnapshotListener { querySnapshot, error in
                if let error = error {
                    print("Error gettting news \(error.localizedDescription)")
                    return
                }
                
                self.newsList = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: NewsModel.self)
                } ?? []
            }
    }
    
    func update(_ news: NewsModel) {
      guard let newsID = news.id else { return }
        
      do {
        try store.collection(path).document(newsID).setData(from: news)
      } catch {
        fatalError("Unable to update card: \(error.localizedDescription).")
      }
    }

    func remove(_ news: NewsModel) {
      guard let newsID = news.id else { return }

      store.collection(path).document(newsID).delete { error in
        if let error = error {
          print("Unable to remove card: \(error.localizedDescription)")
        }
      }
    }
}
