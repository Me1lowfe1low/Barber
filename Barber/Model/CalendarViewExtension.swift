//
//  CalendarViewExtension.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 25.12.2022.
//

import SwiftUI;
import Foundation

extension CalendarView {
    // Getting information about current year and month
    func getYearAndMonthInfo() -> [String] {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY MMMM"
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: " ")
    }
    
    // Function to specify the month. By default self.currentMonth is equal 0
    func getCurrentMonth() -> Date {
        let calendar = Calendar.current
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return Date()
        }
        
        return currentMonth
    }
    
    // Data for dates in the month
    func extractDate() -> [DateValue] {
        let calendar = Calendar.current
        let currentMonth = getCurrentMonth()
        var days = currentMonth.getAllDates().compactMap { date -> DateValue in
            let day = calendar.component(.day, from: date)
            return DateValue(day: day, date: date)
        }
        let dayOffset = days.first?.date.dateOffset() ?? Date().dateOffset()
        
        for _ in 0..<dayOffset-1 {
            days.insert(DateValue(day: 0, date: Date()), at: 0)
        }
        
        return days
    }
    
    func extractHour(currentDate: Date) -> [TimeValue] {
        let calendar = Calendar.current
        let hours = currentDate.getAllHours().compactMap { date -> TimeValue in
            let hour = calendar.component(.hour, from: date)
            return TimeValue(hour: hour, time: date)
        }
        return hours
    }
}


struct CalendarViewExtension_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
