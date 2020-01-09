//
//  ClassRepresentation.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

struct ClassRepresentation: Codable {
    
    let name: String
    let duration: String
    let startTime: String
    let endTime: String
    let id: String
    let instructor: String
    let intensityLevel:String
    let requirements: String
    let type: String
    let location: String
    let days: [String]
    
    init(name: String,
         duration: String,
         startTime: String,
         id: String,
         instructor: String,
         endTime: String,
         intensityLevel: String,
         requirements: String,
         type: String,
         location: String,
         days: [String]) {
        
        self.name = name
        self.duration = duration
        self.startTime = startTime
        self.endTime = endTime
        self.intensityLevel = intensityLevel
        self.requirements = requirements
        self.type = type
        self.location = location
        self.days = days
        self.id = id
        self.instructor = instructor
        
    }
  init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        duration = try container.decode(String.self, forKey: .duration)
        intensityLevel = try container.decode(String.self, forKey: .intensityLevel)
        requirements = try container.decode(String.self, forKey: .requirements)
        location = try container.decode(String.self, forKey: .location)
        type = try container.decode(String.self, forKey: .type)
        startTime = try container.decode(String.self, forKey: .startTime)
        endTime = try container.decode(String.self, forKey: .endTime)
        id = try container.decode(String.self, forKey: .id)
        instructor = try container.decode(String.self, forKey: .instructor)
        days = try container.decodeIfPresent([String].self, forKey: .days) ?? []
    }
}
