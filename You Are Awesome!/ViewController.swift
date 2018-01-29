 //
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jeffrey Barros Peña on 1/21/18.
//  Copyright © 2018 Barros Peña. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    var numOfSounds = 3
    let numOfImages = 10
    var soundName = ""
    
    // executes when app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded")
    }

    func playSound() {
        if let sound = NSDataAsset(name: soundName){
            // check is sound.data is an audio file
            do {
                try
                    awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            // if reading in asset didn't work
            print("ERROR: file name \(soundName) didn't load")
        }
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are fantastic!",
                        "You are great!",
                        "You are amazing!",
                        "When the genius bar needs help, they call you",
                        "You brighten my day!"]
        var newIndex = -1
        
        // show a message
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        index = newIndex
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false
        // show an image
        repeat{
            newIndex = Int(arc4random_uniform(UInt32(numOfImages)))
        } while imageNumber == newIndex
        
        imageNumber = newIndex
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        // play a sound
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(numOfSounds)))
        } while soundNumber == newIndex
        soundNumber = newIndex
        soundName = "sound\(soundNumber)"
        playSound()
    }
}

