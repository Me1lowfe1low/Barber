//
//  NewsListViewModel.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 19.01.2023.
//

import Foundation
import Combine

class NewsListViewModel: ObservableObject {
    @Published var newsList: [NewsPieceViewModel] = []
    @Published var newsRepository = NewsRepository()
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        newsRepository.$newsList.map { newsPiece in
            newsPiece.map(NewsPieceViewModel.init)
        }
        .assign(to: \.newsList, on: self)
        .store(in: &cancellables)
    }
    
    func add(_ news: NewsModel) {
        newsRepository.add(news)
    }
}
