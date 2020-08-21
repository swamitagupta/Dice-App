//
//  twoDiceViewController.swift
//  myDiceApp
//
//  Created by Swamita on 25/03/20.
//  Copyright © 2020 Swamita. All rights reserved.
//

import UIKit

class twoDiceViewController: UIViewController {
    
    @IBOutlet var bgView: UIView!
    
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
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
        diceImage2.image = diceArray[Int.random(in: 0...5)]
    }

}
