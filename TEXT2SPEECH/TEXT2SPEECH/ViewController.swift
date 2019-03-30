//
//  ViewController.swift
//  TEXT2SPEECH
//
//  Created by ADG RIT 2 on 30/03/19.
//  Copyright © 2019 Harshubh Meherishi. All rights reserved.
//

import UIKit
import AVFoundation
class ViewControllerA: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var SpeechTextField: UITextField!
    
    override func viewDidLoad() {
        print("Inside ViewDidLoad")
        super.viewDidLoad()
        speak(text: "")
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("Inside View DID APPEAR")
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button Tapped BOIIII")
    }
    
    func speak(text: String) {
        let speech = AVSpeechUtterance(string: "Hello Sexy")
        speech.rate = 0.2
        speech.voice = AVSpeechSynthesisVoice(language: "en_GB")
        
        let synth = AVSpeechSynthesizer()
        synth.speak(speech)
    }
}

