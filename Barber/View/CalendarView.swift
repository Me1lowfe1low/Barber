//
//  CalendarView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import SwiftUI

struct CalendarView: View {
    @Binding var currentDate: Date
    @State var testCalendar = Calendar.current
    
    //Change month
    @State var currentMonth: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            //Days
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
                }
            }
        }
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
