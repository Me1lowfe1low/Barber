//
//  Element.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 10.01.2023.
//

import Foundation

struct Element: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: String
    let description: String
    let elementType: ShopSection
    
    func check(_ shopSection: String) -> Bool {
        self.elementType.rawValue == shopSection ? true : false
    }
    
    #if DEBUG
    static let elementList: [Element] = [
        Element(name: "Shampoo #1", price: "12$", description: "Shampoo number one in the world", elementType: .shampoo),
        Element(name: "Shampoo #2", price: "10$", description: "Shampoo number two in the world", elementType: .shampoo),
        Element(name: "Shampoo #3", price: "4$", description: "Shampoo number three in the world", elementType: .shampoo),
        Element(name: "Big towel", price: "4$", description: "Big white towel with green lines", elementType: .towels),
        Element(name: "Small towel", price: "2$", description: "Small white towel with green lines", elementType: .towels),
        Element(name: "Uni-scissors", price: "1.90$", description: "Scissors that are optimal for beard cutting", elementType: .scissors),
        Element(name: "Hammer", price: "4$", description: "This hammer features a \"vibration absorbing grip to improve user comfort\" and is a light 14oz \"for a fast swing and reduced fatigue\"", elementType: .skinCare),
        Element(name: "Liquid for skin", price: "3$", description: "All that your skin could be dreaming of", elementType: .skinCare)
    ]
    #endif
}
