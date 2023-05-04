//
//  Card.swift
//  Concentration
//
//  Created by Allen Wong on 2023/3/26.
//

import Foundation

struct Card: Hashable {
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactor = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactor += 1
        return identifierFactor
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
