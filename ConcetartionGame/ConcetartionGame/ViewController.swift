//
//  ViewController.swift
//  ConcetartionGame
//
//  Created by Esraa Hassan on 5/10/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cardButtons: [UIButton]!
    private lazy var game  = Conecentration(numberOfPairsOfCard: (cardButtons.count + 1)/2)

     @IBOutlet private weak var flipCountLabel: UILabel!
   private var flipCount : Int = 0
    {
        didSet
        {
            flipCountLabel.text = "Flips: \(flipCount)"

        }
    }
     @IBAction private func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
       
        
    }
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
        if var cardNumber = cardButtons.index(of: sender)
        {
            //flipCard(withEmoji: emojiArray[cardNumber], on: sender)
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
        
    }
   private func updateViewFromModel()
    {
        for index in cardButtons.indices
        {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp
            {
                button.setTitle(emoji(for: card) ,for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
            else
            {
                button.setTitle("" ,for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 0) :#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            }
            
        }
    }
    private var emojiArray  = ["🐓","😂","😎","😍","🎃","👻","😜","💩","🍀"]
    private var emojis = Dictionary <Int,String>()

   private func emoji(for card : Card) -> String
    {
        if emojis[card.identifier]==nil,emojiArray.count > 0
            {
                let randomIndex = Int( arc4random_uniform(UInt32(emojiArray.count)))
                emojis[card.identifier] = emojiArray.remove(at: randomIndex)
            }
        
        return emojis[card.identifier] ?? "?"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    


}

