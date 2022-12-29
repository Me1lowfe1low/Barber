//
//  NewsModel.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import Foundation

struct NewsModel: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageURL: String
    let tag: Int
    
    #if DEBUG
    static let pieceOfNews = NewsModel(name: "Special offer", description: "This one special offer is related to the X-mas", imageURL: "exclamationmark.triangle.fill", tag: 0)
    static let bunchOfNews: [NewsModel] = [NewsModel(name: "Special offer", description: "This one special offer is related to the ...", imageURL: "wand.and.stars.inverse", tag: 0),NewsModel(name: "X-mas offer", description: "This one special offer is related to the X-mas", imageURL: "exclamationmark.triangle.fill", tag: 1),NewsModel(name: "Holiday offer", description: "Holidays are comming, Holidays are coming. Tis the season, Watch out< look around. So,ething's coming to town", imageURL: "rectangle.portrait.on.rectangle.portrait.angled", tag: 2),NewsModel(name: "New Year offer", description: "This one special offer is related to the New Year", imageURL: "rectangle.portrait", tag: 3)]
    #endif
}
