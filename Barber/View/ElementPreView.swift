//
//  ElementPreView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 11.01.2023.
//

import SwiftUI

struct ElementPreView: View {
    @State var element: Element
    
    var body: some View {
        VStack {
            Image(systemName: "circle.square")
                .resizable()
                .scaledToFit()
                .padding()
            Divider()
            Text(element.name)
                .font(.subheadline)
                .lineLimit(1)
            Text(element.price)
                .font(.title3)
                .bold()
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 40)
            .stroke(lineWidth: 4)
            .padding()
        )
    }
}

struct ElementPreView_Previews: PreviewProvider {
    static var previews: some View {
        ElementPreView(element: Element.elementList[0])
    }
}
