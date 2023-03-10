//
//  ClientCreator.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 29.12.2022.
//

import Foundation

class client: Identifiable {
    let id: UUID = UUID()
    let firstName: String
    let middleName: String
    var lastName: String = ""
    var profileImage: String = "person.circle"
    var birthDate: Date
    let email: String
    let phoneNumber: String
    let orderHistory: String
    
    init(firstName: String, middleName: String? = nil, lastName: String, profileImage: String? = nil, birthDate: Date, email: String, phoneNumber: String, orderHistory: String) {
        self.firstName=firstName
        self.middleName = middleName ?? ""
        self.lastName = lastName
        self.profileImage = profileImage ?? "person.circle"
        self.birthDate = birthDate
        self.email = email
        self.phoneNumber = phoneNumber
        self.orderHistory = orderHistory
    }
    
    #if DEBUG
    static let clientSample:  client = client(firstName: "Alex", middleName: "Albert", lastName: "Cheese", profileImage: "person.crop.circle.badge.questionmark.fill",birthDate: Date(timeIntervalSinceReferenceDate: -123456789.0),email: "dummymail@dummyhost.com", phoneNumber: "8912931XXXX", orderHistory: "None")
    #endif
}
