//
//  ShopSectionView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 11.01.2023.
//

import SwiftUI

struct ShopSectionView: View {
    var section: String
    @State private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    @Binding var goods: [Element]
   
    var body: some View {
        Section(section) {
            ScrollView {
                LazyVGrid(columns: twoColumnGrid) {
                    ForEach(goods, id: \.self) { item in
                        if item.check(section) {
                            NavigationLink(destination: ElementView(element: item))
                            {
                                ElementPreView(element: item)
                            }
                            .frame(width: 200, height: 200)
                        }
                    }
                }
            }
            
            /*Grid {
                GridRow {
                    ForEach(goods, id: \.self) { item in
                        if item.check(section.rawValue) {
                            ElementPreView(element: item)
                        }
                    }
                }
            }*/
        }
    }
}

struct ShopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ShopSectionView(section: ShopSection.shampoo.rawValue, goods: .constant(Element.elementList))
    }
}
