//
//  CellView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 29.12.2022.
//

import SwiftUI

struct CellView: View {
    var value: String
    
    var body: some View {
        VStack(alignment: .center){
            ZStack {
                Image(systemName: value)
                    .font(.title)
                    .padding()
                RoundedRectangle(cornerRadius: 40).fill(LinearGradient(colors: [.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4)
            }
        }
        .frame(width: 150, height: 150)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(value: "person.3")
    }
}
