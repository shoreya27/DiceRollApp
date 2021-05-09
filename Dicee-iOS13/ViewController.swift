//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to refer UIElements in IB
    @IBOutlet weak var diceImageViewone: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //let keyword is used to define
        //a constant value which in future
        //is not gonna change
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),
                         #imageLiteral(resourceName: "DiceTwo"),
                         #imageLiteral(resourceName: "DiceThree"),
                         #imageLiteral(resourceName: "DiceFour"),
                         #imageLiteral(resourceName: "DiceFive"),
                         #imageLiteral(resourceName: "DiceSix")]
        
        /*
         Randomisation in swift is achieved by multiple way
         1 --> Int.random(0...5) here ... represents range
         2 --> array.randomelement() ---> method of an array
         */
        diceImageViewone.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        //print(diceImageView2.image)
    }
}
