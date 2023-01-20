//
//  NewsModel.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import Foundation
import FirebaseFirestoreSwift

struct NewsModel: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    let name: String
    let description: String
    let imageURL: String
    let tag: Int
  
    #if DEBUG
    static let pieceOfNews = NewsModel(id: UUID().uuidString, name: "Special offer", description: "This one special offer is related to the X-mas", imageURL: "exclamationmark.triangle.fill", tag: 0)
    #endif
    /*
    #if DEBUG
    static let bunchOfNews: [NewsModel] = [NewsModel(id: UUID().uuidString, name: "Special offer", description: "This one special offer is related to the ...", imageURL: "wand.and.stars.inverse", tag: 0),NewsModel(id: UUID().uuidString,name: "X-mas offer", description: "This one special offer is related to the X-mas", imageURL: "exclamationmark.triangle.fill", tag: 1),NewsModel(id: UUID().uuidString,name: "Holiday offer", description: "Holidays are comming, Holidays are coming. Tis the season, Watch out< look around. Something's coming to town", imageURL: "rectangle.portrait.on.rectangle.portrait.angled", tag: 2),NewsModel(id: UUID().uuidString,name: "New Year offer", description: "This one special offer is related to the New Year", imageURL: "rectangle.portrait", tag: 3)]
    #endif
     */
}
