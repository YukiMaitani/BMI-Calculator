//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 米谷裕輝 on 2022/06/15.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var resultBMI: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = resultBMI
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
