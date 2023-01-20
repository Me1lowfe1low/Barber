//
//  ElementView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 10.01.2023.
//

import SwiftUI

struct ElementView: View {
    @State var element: Element
    
    var body: some View {
        VStack {
            Image(systemName: "circle.square")
                .resizable()
                .scaledToFit()
            Divider()
            HStack {
                VStack {
                    Text(element.name)
                        .font(.title3)
                        .lineLimit(1)
                        .bold()
                    Text(element.description)
                        .font(.callout)
                }
                Divider()
                    .frame(height: 40)
                Text(element.price)
                    .font(.title)
                    .bold()
            }
        }
        .padding()
    }
}

struct ElementView_Previews: PreviewProvider {
    static var previews: some View {
        ElementView(element: Element.elementList[6])
    }
}
