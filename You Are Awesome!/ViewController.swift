//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jeffrey Barros Peña on 1/21/18.
//  Copyright © 2018 Barros Peña. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    // executes when app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded")
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
//        let message1 = "You are awesome!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//            messageLabel.textColor = UIColor.red
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//            messageLabel.textColor = UIColor.blue
//        } else {
//            messageLabel.text = message1
//            messageLabel.textColor = UIColor.green
//        }
        
        let messages = ["You are fantastic!",
                        "You are great!",
                        "You are amazing",
                        "When the genius bar needs help, they call you",
                        "You brighten my day!"]
        
        messageLabel.text = messages[index]
        index += 1
        if index == messages.count {
            index = 0
        }
        
    }
    
    
}

