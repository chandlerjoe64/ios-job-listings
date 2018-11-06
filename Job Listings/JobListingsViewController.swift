//
//  JobListingsViewController.swift
//  Job Listings
//
//  Created by Joseph Chandler on 11/6/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import CoreData
import UIKit



class JobListingsViewController: UIViewController {

    @IBOutlet weak var JobListingsTableView: UITableView!
    
    var jobs = [Job]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Job> = Job.fetchRequest()
        do {
            jobs = try managedContext.fetch(fetchRequest)
            JobListingsTableView.reloadData()
        }catch {
                print("Fetch could not be performed")
            }
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func AddJob(_ sender: Any) {
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

extension JobListingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = JobListingsTableView.dequeueReusableCell(withIdentifier: "jobCell", for: indexPath)
        let job = jobs[indexPath.row]
        
        cell.textLabel?.text = job.title
        cell.detailTextLabel?.text = String(job.pay)
        
        return cell
    }
}

extension JobListingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showJob", sender: self)
    }
}
