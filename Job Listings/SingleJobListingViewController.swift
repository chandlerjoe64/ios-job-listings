//
//  SingleJobListingViewController.swift
//  Job Listings
//
//  Created by Joseph Chandler on 11/6/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import UIKit

class SingleJobListingViewController: UIViewController {

    
    @IBOutlet weak var JobTitle: UITextField!
    @IBOutlet weak var HourlyPay: UITextField!
    @IBOutlet weak var DegreeRequired: UISwitch!
    @IBOutlet weak var JobDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func SaveButton(_ sender: Any) {
        let jobTitle = JobTitle.text
        let jobDesription = JobDescription.text
        let hourlyPayText = HourlyPay.text ?? ""
        let hourlyPay = Double(hourlyPayText) ?? 0.0
        let degreeRequired = DegreeRequired.isOn
        
        let job = Job(title: jobTitle, pay: hourlyPay, degreeRequired: degreeRequired, jobDescription: jobDesription)
        
        
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
