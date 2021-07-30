//
//  FeederViewController.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import UIKit

class FeederViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendButton.setBackgroundImage(UIImage(named: "buttonBackground"), for: .normal)
        self.picker.dataSource = self
        self.picker.delegate = self
        pickerData = Array(1...99)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(pickerData[row])
    }
}
