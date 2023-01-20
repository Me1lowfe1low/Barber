//
//  Client.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 29.12.2022.
//

import Foundation

struct Client: Identifiable {
    let id = UUID()
    let firstName: String
    let middleName: String
    var lastName: String = ""
    var profileImage: String = "person.circle"
    var birthDate: Date
    let email: String
    let phoneNumber: String
    let orderHistory: String
    
    #if DEBUG
    static let clientSample:  Client = Client(firstName: "Alex", middleName: "Albert", lastName: "Cheese", profileImage: "person.crop.circle.badge.questionmark.fill",birthDate: Date(timeIntervalSinceReferenceDate: -123456789.0),email: "dummymail@dummyhost.com", phoneNumber: "8912931XXXX", orderHistory: "None")
    #endif
}
