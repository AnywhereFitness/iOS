//
//  Class+CoreDataProperties.swift
//  AnywhereFitness
//
//  Created by Brandi Bailey on 1/9/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//
//

import Foundation
import CoreData


extension Class {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Class> {
        return NSFetchRequest<Class>(entityName: "Class")
    }

    @NSManaged public var type: String?
    @NSManaged public var startTime: String?
    @NSManaged public var size: String?
    @NSManaged public var requirements: String?
    @NSManaged public var name: String?
    @NSManaged public var location: String?
    @NSManaged public var intensityLevel: String?
    @NSManaged public var instructor: String?
    @NSManaged public var id: String?
    @NSManaged public var endTime: String?
    @NSManaged public var duration: String?

}
