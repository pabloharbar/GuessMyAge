//
//  EndViewController.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var ageImage: UIImageView!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!

    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var generationLabel: UILabel!
    
    @IBOutlet weak var wrongButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = .rounded(ofSize: 42, weight: .regular)
        ageLabel.font = .rounded(ofSize: 36, weight: .semibold)
        generationLabel.font = .rounded(ofSize: 48, weight: .bold)
        playAgainButton.setBackgroundImage(UIImage(named: "buttonBackground"), for: .normal)
        rightButton.setBackgroundImage(UIImage(named: "rightButton"), for: .normal)
        wrongButton.setBackgroundImage(UIImage(named: "wrongButton"), for: .normal)
    }
    
}
