//
//  ClassRepresentation.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

class ClassRepresentation: Codable {
    
    let name: String
    let duration: String
    let startTime: String
    let endTime: String
   // let id: String
  //  let instructor: String
    let intensityLevel:String
    let requirements: String
    let type: String
    let location: String
    let days: [String]
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        duration = try container.decode(String.self, forKey: .duration)
        intensityLevel = try container.decode(String.self, forKey: .intensityLevel)
        requirements = try container.decode(String.self, forKey: .requirements)
        location = try container.decode(String.self, forKey: .location)
        type = try container.decode(String.self, forKey: .type)
        startTime = try container.decode(String.self, forKey: .startTime)
        endTime = try container.decode(String.self, forKey: .endTime)
        days = try container.decodeIfPresent([String].self, forKey: .days) ?? []
    }
}
