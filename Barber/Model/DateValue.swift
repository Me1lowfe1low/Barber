//
//  DateValue.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 25.12.2022.
//

import Foundation

struct DateValue: Identifiable {
    let id = UUID()
    let day: Int
    let date: Date
    let assigned: Bool = false
}

