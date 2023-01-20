//
//  GridView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 27.12.2022.
//

import SwiftUI

struct GridView<TimeValue, HourView>: View where TimeValue: Identifiable, HourView: View {
    var items: [TimeValue]
    var viewForItem: (TimeValue) -> HourView
    
    init(_ items: [TimeValue], viewForItem: @escaping (TimeValue) -> HourView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometryProxy in
            self.body(for: GridLayout(itemCount: items.count, in: geometryProxy.size))
        }
    }
    
    func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            self.body(for: item, in: layout)
        }
    }
    
    func body(for item: TimeValue, in layout: GridLayout) -> some View {
        let index = self.index(of: item)
        return viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
    
    func index(of item: TimeValue) -> Int {
        for index in 0..<items.count {
            if items[index].id == item.id {
                return index
            }
        }
        return 0
    }
}
