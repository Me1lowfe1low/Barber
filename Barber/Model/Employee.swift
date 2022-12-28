//
//  Employee.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import Foundation

struct Employee: Identifiable {
    let id = UUID()
    let firstName: String
    let secondName: String
    var lastName: String = ""
    var profileImage: String = "person.circle"
    let position: Position
    let workSchedule: Date
    
    #if DEBUG
    static let employee: Employee = Employee(firstName: "Ivan", secondName: "Ivanov", lastName: "Ivanovich", position: Position.barber, workSchedule: Date())
    static var employees: [Employee] = [Employee(firstName: "John", secondName: "Doe",  position: Position.barber, workSchedule: Date()),Employee(firstName: "Sam", secondName: "Smith",  position: Position.barberInstructor, workSchedule: Date()),Employee(firstName: "Taylor", secondName: "Swift",profileImage: "person.fill.checkmark", position: Position.barber, workSchedule: Date()),Employee(firstName: "Ilon", secondName: "Mask",  position: Position.hairStylist, workSchedule: Date()),Employee(firstName: "Ivan", secondName: "Ivanov", lastName: "Ivanovich", position: Position.barber, workSchedule: Date()),Employee(firstName: "Harry", secondName: "Potter",  position: Position.barberApprentice, workSchedule: Date())]
    
    #endif
}
