//
//  Eployee.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import Foundation

struct Employee: Identifiable {
    let id = UUID()
    let firstName: String
    let secondName: String
    let lastName: String? = nil
    let position: Position
    let workSchedule: Date
}
