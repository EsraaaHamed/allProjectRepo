//
//  Concentration.swift
//  ConcetartionGame
//
//  Created by Esraa Hassan on 5/10/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
class Conecentration
{
    private(set) var cards = [Card]()
    private var indexOfOneAndOnlyFaceUpCard : Int?
    {
        get
        {
            var foundIndex : Int?
            for index in cards.indices
            {
                if cards[index].isFaceUp
                {
                    if foundIndex == nil
                    {
                        foundIndex = index
                    }
                    else
                    {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set(newValue)
        {
            for index in cards.indices
            {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    func chooseCard(at index : Int) 
    {
        if !cards[index].isMatched
        {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard , matchIndex != index{
                if cards[matchIndex].identifier == cards[index].identifier
                {
                    cards[matchIndex].isMatched = true;
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                
            }
            else
            {
               
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        /*if cards[index].isFaceUp
        {
            cards[index].isFaceUp = false
        }
        else
        {
            cards[index].isFaceUp = true
        }*/
    }
    init (numberOfPairsOfCard : Int)
    {
        for _ in 1...numberOfPairsOfCard
        {
            let card = Card()
            cards.append(card)
            cards.append(card)
        }
    }
}
