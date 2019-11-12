//
//  ViewController.swift
//  Xylophone
//
//  Created by Jamie Evans on 12/11/2019.
//  Copyright © 2019 JE Design. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundFile: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playSound(soundFile: String) {
        let url = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

