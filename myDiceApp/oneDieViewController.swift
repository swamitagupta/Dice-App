//
//  oneDieViewController.swift
//  myDiceApp
//
//  Created by Swamita on 25/03/20.
//  Copyright © 2020 Swamita. All rights reserved.
//

import UIKit

//MARK: Global Constants

let darkPink = UIColor(red: 199/255, green: 21/255, blue: 133/255, alpha: 1)
let lightPink = UIColor(red: 1, green: 190/255, blue: 230/255, alpha: 1)

let whiteDiceArray = [UIImage(named: "w1"),UIImage(named: "w2"),UIImage(named: "w3"),UIImage(named: "w4"),UIImage(named: "w5"),UIImage(named: "w6")]

let blackDiceArray = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6")]

let redDiceArray = [UIImage(named: "r1"),UIImage(named: "r2"),UIImage(named: "r3"),UIImage(named: "r4"),UIImage(named: "r5"),UIImage(named: "r6")]

let yellowDiceArray = [UIImage(named: "y1"),UIImage(named: "y2"),UIImage(named: "y3"),UIImage(named: "y4"),UIImage(named: "y5"),UIImage(named: "y6")]

let blueDiceArray = [UIImage(named: "b1"),UIImage(named: "b2"),UIImage(named: "b3"),UIImage(named: "b4"),UIImage(named: "b5"),UIImage(named: "b6")]

let greenDiceArray = [UIImage(named: "g1"),UIImage(named: "g2"),UIImage(named: "g3"),UIImage(named: "g4"),UIImage(named: "g5"),UIImage(named: "g6")]

let pinkDiceArray = [UIImage(named: "p1"),UIImage(named: "p2"),UIImage(named: "p3"),UIImage(named: "p4"),UIImage(named: "p5"),UIImage(named: "p6")]

var diceArray = whiteDiceArray

//MARK: One Dice View

class oneDieViewController: UIViewController {
    
    @IBOutlet var bgView: UIView!
    
    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var backgroundSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bgView.backgroundColor = lightPink

    }
    @IBAction func colourChanged(_ sender: UIButton) {
        changeColour(param: sender.currentTitle!)
    }
    
    @IBAction func backgroundChanged(_ sender: Any) {
        let getIndex = backgroundSegment.selectedSegmentIndex
        
        switch(getIndex){
        case 1:
            self.bgView.backgroundColor = darkPink
            break
        default:
            self.bgView.backgroundColor = lightPink
        }
    }
    @IBAction func rollButtonPressed(_ sender: Any) {
        diceImage.image = diceArray[Int.random(in: 0...5)]
    }
}

//MARK: Change Colour Function

func changeColour (param: String){
   
    switch(param){
    case "Black":
        diceArray = blackDiceArray
        print(param)
        break
    case "Red":
        diceArray = redDiceArray
        break
    case "Yellow":
        diceArray = yellowDiceArray
        break
    case "Blue":
        diceArray = blueDiceArray
        break
    case "Green":
        diceArray = greenDiceArray
        break
    case "Pink":
        diceArray = pinkDiceArray
        break
    default:
        diceArray = whiteDiceArray
    }
}
