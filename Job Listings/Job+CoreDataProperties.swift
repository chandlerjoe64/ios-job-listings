//
//  Job+CoreDataProperties.swift
//  Job Listings
//
//  Created by Joseph Chandler on 11/6/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//
//

import UIKit
import CoreData


extension Job {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Job> {
        return NSFetchRequest<Job>(entityName: "Job")
    }

    @NSManaged public var degreeRequired: Bool
    @NSManaged public var jobDescription: String?
    @NSManaged public var pay: Double
    @NSManaged public var title: String?

    convenience init?(title: String?, pay: Double, degreeRequired: Bool, jobDescription: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Job.entity(), insertInto: managedContext)
        
        self.title = title
        self.pay = pay
        self.degreeRequired = degreeRequired
        self.jobDescription = jobDescription
    }
}
