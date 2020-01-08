//
//  Class.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

extension Class {
    
    convenience init(name: String,
                     duration:String,
                     startTime: String,
                     endTime: String,
                     id: String,
                     instructor: String,
                     intensityLevel:String,
                     requirements: String,
                     type: String,
                     location: String,
                     context: NSManagedObjectContext = CoreDataStack.shared.context ) {
        self.init(context: context)
        self.name = name
        self.duration = duration
        self.startTime = startTime
        self.endTime = endTime
        self.id = id
        self.instructor = instructor
        self.intensityLevel = intensityLevel
        self.requirements = requirements
        self.type = type
        self.location = location
    }
}
