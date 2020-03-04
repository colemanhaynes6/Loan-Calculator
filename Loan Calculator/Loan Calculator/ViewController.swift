//
//  ViewController.swift
//  Loan Calculator
//
//  Created by Coleman Haynes on 3/3/20.
//  Copyright © 2020 Coleman Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var txtDuration: UITextField!
    @IBOutlet weak var txtInterestRate: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    @IBAction func btnCalculate(_ sender: Any) {
        
        let amount: Double? = Double(txtAmount.text!)
        let duration: Double? = Double(txtDuration.text!)
        let rate: Double? = Double(txtInterestRate.text!)
        let payment: Double? = Double((rate!/12.0) + ((rate!/12.0) / pow(1.0 + (rate!/12.0), duration!) - 1.0)) * amount!
        //let payment: Double? = Double(amount! * (pow(((rate!/12)) * (1 + (rate!/12)), duration!)) / ((pow((1 + (rate!/12)), duration!)) - 1))
        //neither of these formulas work uwu
        
        let paymentString: String? = String(payment!)

        lblOutput.text = paymentString
        //lblOutput.double = payment
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

