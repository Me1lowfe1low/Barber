//
//  InfoModel.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import Foundation

struct Info: Identifiable {
    let id = UUID()
    let officeName: String
    let officeHours: String
    let latitude: Double
    let longitude: Double
    let descritption: String
    let contacts: String
    
    #if DEBUG
    static var officeSample: Info = Info(officeName: "First barber shop", officeHours: "8:00-18:00", latitude: 41.715, longitude: 44.813, descritption: "Description of the office", contacts: "7-XXX-XXX-XXXX")
    #endif
}
