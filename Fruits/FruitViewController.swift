//
//  FruitViewController.swift
//  Fruits
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController {
    @IBOutlet weak var fruitEmojiLabel: UILabel!
    @IBOutlet weak var fruitNameLabel: UILabel!

    var fruit: String?

    override func viewWillAppear(_ animated: Bool) {
    //this function is called before the view appears.
        super.viewWillAppear(animated)
        if let fruit = fruit {
            fruitEmojiLabel?.text = fruit
            
            let fruitName = emojiToName(fruit)
            fruitNameLabel?.text = fruitName
            navigationItem.title = fruitName
        }//this ⬆️ sets nav title and textbox to fruitName
    }

    fileprivate func emojiToName(_ emoji: String) -> String {
    //⬆️this means that this f(x) can only be called in FruitViewController.Swift
        switch emoji {
        case "🍎":
            return "Apple"
        case "🍐":
            return "Pear"
        case "🍊":
            return "Tangerine"
        case "🍋":
            return "Lemon"
        case "🍌":
            return "Banana"
        case "🍉":
            return "Watermelon"
        case "🍇":
            return "Grapes"
        case "🍓":
            return "Strawberry"
        case "🍒":
            return "Cherries"
        case "🍍":
            return "Pineapples"
        default:
            return ""
        }
    }//determines fruit name
}
