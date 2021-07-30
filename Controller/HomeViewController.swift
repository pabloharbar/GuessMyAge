//
//  ViewController.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 28/07/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleFinalLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.font = .rounded(ofSize: 72, weight: .regular)
        titleFinalLabel.font = .rounded(ofSize: 72, weight: .regular)
        descriptionLabel.font = .rounded(ofSize: 22, weight: .regular)
        startButton.setBackgroundImage(UIImage(named: "buttonBackground"), for: .normal)
    }


}

