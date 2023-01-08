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
            ZStack {
                RoundedRectangle(cornerRadius: 40).fill(LinearGradient(colors: [.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                Image(systemName:news.imageURL)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .blendMode(.destinationOut)
            }
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
