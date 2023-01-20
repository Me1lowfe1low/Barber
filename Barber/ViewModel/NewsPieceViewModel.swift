//
//  NewsPieceViewModel.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 20.01.2023.
//

import Foundation
import Combine

class NewsPieceViewModel: ObservableObject, Identifiable, Hashable {
    private let newsRepository = NewsRepository()
    @Published var news: NewsModel
    var id: String = ""
    private var cancellables: Set<AnyCancellable> = []
    
    static func == (lhs: NewsPieceViewModel, rhs: NewsPieceViewModel) -> Bool {
        return lhs.news == rhs.news
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(news)
        hasher.combine(id)
    }
    
    init(news: NewsModel) {
        self.news = news
        
        $news
            .compactMap { $0.id }
            .assign(to: \.id, on: self )
            .store(in: &cancellables)

    }
    
    func update(news: NewsModel) {
        newsRepository.update(news)
    }

    func remove() {
        newsRepository.remove(news)
    }
}
