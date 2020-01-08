//
//  Client.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

extension User {
    
    convenience init(email: String,
                     firstName: String,
                     lastName: String,
                     role: String ,
                     id: String,
                     context: NSManagedObjectContext = CoreDataStack.shared.context ) {
        self.init(context: context)
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
        self.id = id
        
    }
}
