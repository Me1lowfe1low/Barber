//
//  TimeValue.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 27.12.2022.
//

import Foundation

struct TimeValue: Identifiable, Hashable {
    let id = UUID()
    let hour: Int
    let time: Date
    let assigned: Bool = false
    
    static let timeSample: [TimeValue] = [
    TimeValue(hour: 12, time: Date())]
}
