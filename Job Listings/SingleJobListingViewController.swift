//
//  SingleJobListingViewController.swift
//  Job Listings
//
//  Created by Joseph Chandler on 11/6/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import UIKit

class SingleJobListingViewController: UIViewController {

    
    @IBOutlet weak var WindowTitle: UINavigationItem!
    @IBOutlet weak var JobTitle: UITextField!
    @IBOutlet weak var HourlyPay: UITextField!
    @IBOutlet weak var DegreeRequired: UISwitch!
    @IBOutlet weak var JobDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    @IBAction func SaveButton(_ sender: Any) {
//        let jobTitle = JobTitle.text
//        let jobDesription = JobDescription.text
//        let hourlyPayText = HourlyPay.text ?? ""
//        let hourlyPay = Double(hourlyPayText) ?? 0.0
//        let degreeRequired = DegreeRequired.isOn
//
//        if let job = Job(title: jobTitle, pay: hourlyPay, degreeRequired: degreeRequired, jobDescription: jobDesription) {
//            do {
//                let managedContext = job.managedObjectContext
//
//                try managedContext?.save()
//
//                self.navigationController?.popViewController(animated: true)
//            } catch {
//                print("Context could not be saved")
//            }
//        }
//
//
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SingleJobListingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
