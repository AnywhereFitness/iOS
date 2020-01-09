//
//  User+CoreDataProperties.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/9/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var role: String?
    @NSManaged public var id: String?
    @NSManaged public var pasword: String?
    @NSManaged public var lastName: String?
    @NSManaged public var firstName: String?
    @NSManaged public var email: String?

}
