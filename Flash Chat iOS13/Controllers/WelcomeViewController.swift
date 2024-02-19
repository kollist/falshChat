//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // animateTitle()
        titleLabel.text = K.welcomeTitle
    }
    
    func animateTitle() {
        if let title = titleLabel.text {
            titleLabel.text = ""
            var characterIndex = 0.0
            for char in title {
                Timer.scheduledTimer(withTimeInterval: TimeInterval(characterIndex * 0.1), repeats: false) { (timer) in
                    self.titleLabel.text?.append(char)
                }
                characterIndex += 1
            }
        }
    }

}
