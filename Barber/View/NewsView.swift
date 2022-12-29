//
//  NewsView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import SwiftUI

struct NewsView: View {
    var news: NewsModel
    
    var body: some View {
        VStack {
            Image(systemName:news.imageURL)
                .resizable()
                .scaledToFit()
            Text("\(news.description)")
        }
        .padding()
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(news: NewsModel.pieceOfNews)
    }
}
