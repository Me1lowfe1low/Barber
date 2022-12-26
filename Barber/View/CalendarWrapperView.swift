//
//  CalendarWrapperView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import SwiftUI

struct CalendarWrapperView: View {
    @State var currentDate: Date = Date()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 10) {
                CalendarView(currentDate: $currentDate)
            }
        }
    }
}

struct CalendarWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
