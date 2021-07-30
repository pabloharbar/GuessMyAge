//
//  GameViewController.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import UIKit
import Foundation

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TopContainer: UIView!
    
    @IBOutlet weak var progressImage: UIImageView!
    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionsView: UITableView!
    
    @IBOutlet weak var babyImage: UIImageView!
    
    @IBOutlet weak var teenImage: UIImageView!
    
    @IBOutlet weak var adultImage: UIImageView!
    
    @IBOutlet weak var elderImage: UIImageView!
    
    
    let data = DataBank.shared
    
    var currentGuess = Guess(generations: DataBank.shared.generationData)
    
    var questions = DataBank.shared.getQuestions()
    
    var currentQuestion: Question = DataBank.shared.questionData.randomElement()!
    
    let cellIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            
        cell.textLabel?.text = currentQuestion.options[indexPath.row].text
        let selectedView = UIView()
        selectedView.backgroundColor = UIColor(named: "Orange")?.withAlphaComponent(0.5)
        cell.selectedBackgroundView = selectedView
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showResultImage(generations: currentQuestion.options[indexPath.row].generationsIncluded)
        
        optionsView.allowsSelection = false
        
        let cell = optionsView.cellForRow(at: indexPath)
        cell?.textLabel?.textColor = .white
        
        currentGuess.updateGuessCertain(option: currentQuestion.options[indexPath.row])
        
//        currentGuess.updateGenerationCertain(option: currentQuestion.options[indexPath.row])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.updateQuestion()
            self.optionsView.reloadData()
            self.resetImage()
            self.optionsView.allowsSelection = true
            cell?.textLabel?.textColor = UIColor(named: "Orange")
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = optionsView.cellForRow(at: indexPath)
        cell?.textLabel?.textColor = .white
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = optionsView.cellForRow(at: indexPath)
        cell?.textLabel?.textColor = UIColor(named: "Orange")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TopContainer.insetsLayoutMarginsFromSafeArea = false
        
        progressImage.image = UIImage(named: "progress1")
        progressLabel.text = "Criando suposições"
        progressLabel.font = .rounded(ofSize: 20, weight: .regular)
        optionsView.isScrollEnabled = false
        initQuestion()
    }
    
    func initQuestion() {
        questionLabel.text = currentQuestion.question
        optionsView.reloadData()
    }
    
    func updateQuestion() {
        questions.removeAll { question in
            return question.id == currentQuestion.id
        }
        if questions.count > 0 {
            currentQuestion = questions.randomElement()!
        } else {
            stopCriteria()
        }
        questionLabel.text = currentQuestion.question
        optionsView.reloadData()
    }
    
    func showResultImage(generations: [generationsEnum]) {
        for i in generations {
            switch i {
            case .generationZ:
                babyImage.image = UIImage(named: "babyFill")
            case .generationY:
                teenImage.image = UIImage(named: "teenFill")
            case .generationX:
                adultImage.image = UIImage(named: "adultFill")
            case .babyBoomer, .silentGeneration:
                elderImage.image = UIImage(named: "elderFill")
            }
        }
    }
    
    func resetImage() {
        for i in [generationsEnum.generationZ,.generationY,.generationX,.babyBoomer] {
            switch i {
            case .generationZ:
                babyImage.image = UIImage(named: "babyClear")
            case .generationY:
                teenImage.image = UIImage(named: "teenClear")
            case .generationX:
                adultImage.image = UIImage(named: "adultClear")
            case .babyBoomer, .silentGeneration:
                elderImage.image = UIImage(named: "elderClear")
            }
        }
    }
    
    func stopCriteria() {
        if questions.count <= 1 {
            let vc = self.storyboard!.instantiateViewController(withIdentifier: "endViewController") as! EndViewController
            vc.gameViewController = self
            
            let result = self.currentGuess.collectResult()

            vc.ageResult = "\(result[0]) anos"
            switch result[1] {
            case 0:
                vc.generationTitle = DataBank.shared.generationData[0].title
                vc.generationDescription = DataBank.shared.generationData[0].description
            case 1:
                vc.generationTitle = DataBank.shared.generationData[1].title
                vc.generationDescription = DataBank.shared.generationData[1].description
            case 2:
                vc.generationTitle = DataBank.shared.generationData[2].title
                vc.generationDescription = DataBank.shared.generationData[2].description
            case 3:
                vc.generationTitle = DataBank.shared.generationData[3].title
                vc.generationDescription = DataBank.shared.generationData[3].description
            case 4:
                vc.generationTitle = DataBank.shared.generationData[4].title
                vc.generationDescription = DataBank.shared.generationData[4].description
                
            default:
                break
            }
            self.show(vc, sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let vc = segue.destination as? EndViewController {
            let result = self.currentGuess.collectResult()
            print(result)
            vc.ageResult = "\(result[0]) anos"
            switch result[1] {
            case 0:
                vc.generationTitle = DataBank.shared.generationData[0].title
                vc.generationDescription = DataBank.shared.generationData[0].description
            case 1:
                vc.generationTitle = DataBank.shared.generationData[1].title
                vc.generationDescription = DataBank.shared.generationData[1].description
            case 2:
                vc.generationTitle = DataBank.shared.generationData[2].title
                vc.generationDescription = DataBank.shared.generationData[2].description
            case 3:
                vc.generationTitle = DataBank.shared.generationData[3].title
                vc.generationDescription = DataBank.shared.generationData[3].description
            case 4:
                vc.generationTitle = DataBank.shared.generationData[4].title
                vc.generationDescription = DataBank.shared.generationData[4].description
                
            default:
                break
            }
           
        }
    }
}
