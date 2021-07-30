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
    
    @IBOutlet weak var generationDescriptionLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!

    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var generationLabel: UILabel!
    
    @IBOutlet weak var wrongButton: UIButton!
    
    var gameViewController: GameViewController!
    
    var generationTitle = ""
    
    var generationDescription = ""
    
    var ageResult = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = .rounded(ofSize: 42, weight: .regular)
        ageLabel.font = .rounded(ofSize: 36, weight: .semibold)
        generationLabel.font = .rounded(ofSize: generationTitle == "Geração Silenciosa" ? 36 : 48, weight: .bold)
        generationDescriptionLabel.font = .rounded(ofSize: 18, weight: .bold)
        playAgainButton.setBackgroundImage(UIImage(named: "buttonBackground"), for: .normal)
        rightButton.setBackgroundImage(UIImage(named: "rightButton"), for: .normal)
        wrongButton.setBackgroundImage(UIImage(named: "wrongButton"), for: .normal)
        loadData(generationTitle: generationTitle, generationDescription: generationDescription, ageResult: ageResult)
        switch generationTitle {
        case "Geração Z":
            ageImage.image = UIImage(named: "babyResult")
        case "Geração Y":
            ageImage.image = UIImage(named: "teenResult")
        case "Geração X":
            ageImage.image = UIImage(named: "adultResult")
        case "Baby Boomer", "Geração Silenciosa":
            ageImage.image = UIImage(named: "elderResult")
        default:
            break
        }
    }
    
    func loadData(generationTitle: String, generationDescription: String, ageResult: String) {
        self.generationLabel.text = generationTitle
        self.generationDescriptionLabel.text = generationDescription
        self.ageLabel.text = ageResult
    }
    
}
