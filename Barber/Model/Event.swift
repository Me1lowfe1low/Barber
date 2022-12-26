//
//  Event.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import Foundation

struct Event: Identifiable {
    let id = UUID()
    let date: Date
    let description: String
    let price: Int
    let duration: Int
}
