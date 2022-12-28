//
//  GridLayout.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 27.12.2022.
//

import SwiftUI

struct GridLayout {
    var size: CGSize
    var rowCOunt: Int = 0
    var columnCount: Int = 0
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) { }
    
    var itemSize: CGSize { }
    
    func location(ofItemAt index: Int) -> CGPoint {
        
    }
}
