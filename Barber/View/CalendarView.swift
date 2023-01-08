//
//  CalendarView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import SwiftUI

struct CalendarView: View {
    @Binding var currentDate: Date
    @State var chosenDate: Date = Date()
    @State var currentMonth: Int = 0
    private let adaptiveColumns = [ GridItem(.adaptive(minimum: 160))]
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MMM-YYYY"
        return formatter
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            DatePicker("Date", selection: $chosenDate, displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
            Divider()
            Text("Choosen date: "+dateFormatter.string(from: chosenDate))
            Divider()
            let hours = extractHour(currentDate: chosenDate)
            LazyVGrid(columns: adaptiveColumns, spacing: 2 ) {
                ForEach(hours) { hour in
                    ZStack {
                        if hour.hour > 7 && hour.hour < 18 {
                            HourView(value: hour)
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .onChange(of: currentMonth) { newValue in
            currentDate = getCurrentMonth()
        }
    }
}
    

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*
let days: [String] = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]

HStack(spacing: 20) {
    VStack(alignment: .leading,spacing: 10) {
        Text(getYearAndMonthInfo()[0])
            .font(.caption)
            .fontWeight(.semibold)
        Text(getYearAndMonthInfo()[1])
            .font(.title2.bold())
    }
    Spacer()
    Button {
        withAnimation {
            currentMonth -= 1
        }
    } label: {
        Image(systemName: "chevron.left")
            .font(.title2)
    }
    Button {
        withAnimation {
            currentMonth += 1
        }
    } label: {
        Image(systemName: "chevron.right")
            .font(.title2)
    }
}
.padding(.horizontal)
HStack {
    ForEach(days, id: \.self) { day in
        Text(day)
            .font(.callout)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
    }
}
.padding(.horizontal)

let columns = Array(repeating: GridItem(.flexible()), count: 7)
LazyVGrid(columns: columns, spacing: 15) {
    ForEach(extractDate()) { value in
        DateView(value: value)
            .onTapGesture {
                chosenDate = value.date
            }
    }
    .padding(.vertical, 5)
}
*/
