//
//  Class+Convenience.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

extension Class {
    
//    var classRepresentation: ClassRepresentation? {
//        guard let name = name,
//        let duration = duration,
//        let startTime = startTime,
//        let endTIme = endTime,
//        let id = id,
//        let instructor = instructor,
//        let intensityLevel = intensityLevel,
//        let requirements = requirements,
//        let type = type,
//        let location = location else { return nil }
//        
//        return ClassRepresentation(name: name, duration: duration, startTime: startTime, id: id, instructor: instructor, endTime: endTIme, intensityLevel: intensityLevel, requirements: requirements, type: type, location: location, days: )
//    }
    
    
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
