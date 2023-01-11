//
//  ShopView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 10.01.2023.
//

import SwiftUI

struct ShopView: View {
    @State var goods: [Element] = Element.elementList
    
    var body: some View {
        let segments = Set(goods.map { $0.elementType.rawValue })
        VStack(alignment: .trailing) {
            List(segments.sorted(by: <), id: \.self) { element in
                Section(element) {
                    NavigationLink(destination: ShopSectionView(section: element,  goods: $goods))
                    {
                        Image(systemName: "arrowshape.right")
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(goods, id: \.self ) { item in
                                if item.check(element) {
                                    NavigationLink(destination: ElementView(element: item))
                                    {
                                        ElementPreView(element: item)
                                    }
                                    .frame(width: 200, height: 200)
                                }
                            }
                            
                        }
                    }
                }
                .font(.title)
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
