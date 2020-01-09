//
//  User+Convinience.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

extension User {
    
    var userRepresentation: UserRepresentation? {
        guard let email = email,
            let firstName = firstName,
            let lastName = lastName,
            let role = role,
            let id = id else { return nil }
        
        return UserRepresentation(email: email, firstName: firstName, lastName: lastName, role: role, id: id)
    }
    
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
