//
//  HourView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 26.12.2022.
//

import SwiftUI

struct HourView: View {
    var value: TimeValue
    
    var body: some View {
        HStack {
            Label("\(value.hour):00", systemImage: "clock")
                .font(.caption)
            Spacer()
            value.assigned ? Text("Assigned") : Text("Free")
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 20).fill(value.assigned ? LinearGradient(colors: [.orange,.red], startPoint: .topLeading, endPoint: .bottomTrailing): LinearGradient(colors: [.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .frame(maxWidth: .infinity)
    }
}

struct HourView_Previews: PreviewProvider {
    static var previews: some View {
        HourView(value: TimeValue.timeSample[0])
    }
}
