//
//  DateView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 26.12.2022.
//

import SwiftUI

struct DateView: View {
    @State var value: DateValue
    
    var body: some View {
        VStack {
            if value.day != 0 {
                Text("\(value.day)")
                    .font(.title3.bold())
                    //.padding(.vertical)
            }
        }
        .frame(alignment: .top)
        
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
