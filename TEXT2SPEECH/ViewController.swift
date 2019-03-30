//
//  ViewController.swift
//  TEXT2SPEECH
//
//  Created by ADG RIT 2 on 30/03/19.
//  Copyright © 2019 Harshubh Meherishi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textFieldInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button Tapped")
        let text = textFieldInput.text!
        speak(string: text)
    }
    
    func speak(string: String){
        let utterance = AVSpeechUtterance(string: string)
        utterance.rate = 0.455
        utterance.volume = 100
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        
        let synt = AVSpeechSynthesizer()
        synt.speak(utterance)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
