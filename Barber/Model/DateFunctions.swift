//
//  DateFunctions.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import Foundation

extension Date {
    func getAllDates() -> [Date] { // function that gets all dates for a current month
        let calendar = Calendar.current
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        let range = calendar.range(of: .day, in: .month, for: self)!
        
        return range.compactMap { day -> Date in
            return calendar.date(bySetting: .day, value: day, of: startDate)!
        }
    }
    
    func dateOffset() -> Int {
        let calendar = Calendar.current
        var codeOfTheWeekday = calendar.dateComponents([.weekday], from: calendar.date(from: calendar.dateComponents([.year, .month], from: self))!).weekday ?? 0
        if codeOfTheWeekday == 1 {
            codeOfTheWeekday = 7
        }  else {
            codeOfTheWeekday -= 1
        }
        return codeOfTheWeekday
    }
}
