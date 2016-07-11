//
//  ViewController.swift
//  Cards
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var edgeLabels: [UILabel]!
    @IBOutlet weak var centerLabel: UILabel!
    @IBAction func buttonPressed(sender: UIButton) {
        let buttonText = sender.titleLabel!.text!
        let suit = buttonText.substringToIndex(buttonText.startIndex.advancedBy(1))
        let value = buttonText.substringFromIndex(buttonText.startIndex.advancedBy(1))
        for label in edgeLabels { label.text = suit }
        centerLabel.text = value
    }
}
