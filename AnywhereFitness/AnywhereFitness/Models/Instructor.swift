//
//  Instructor.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

extension Instructor {
    
    convenience init(email: String,
                     firstName: String,
                     lastName: String,
                     id: String,
                     role: String,
                     context: NSManagedObjectContext = CoreDataStack.shared.context) {
        self.init(context:context)
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
        self.role = role 
    }
}
