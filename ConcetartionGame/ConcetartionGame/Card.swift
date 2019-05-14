//
//  Card.swift
//  ConcetartionGame
//
//  Created by Esraa Hassan on 5/10/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
struct Card
{
    var isFaceUp = false;
    var isMatched = false;
    var identifier : Int ;
    private static var identifierFacroty = 0;
    private static func getUniqueIdentifier() ->Int
    {
        identifierFacroty += 1
        return identifierFacroty
    }
    
    init()
    {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
