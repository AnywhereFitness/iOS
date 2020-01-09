//
//  UserRepresentation.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

struct UserRepresentation: Codable {
    
    let email: String
    let firstName: String
    let lastName: String
    let role: String
    let id: String
    
    private enum UserCodingKeys: String, CodingKey {
      case user
        
        enum UserCodingKeys: String, CodingKey {
            case email
            case firstName
            case lastName
            case role
            case id
        }
    }
    
    init(email: String, firstName: String, lastName:String, role: String, id: String) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
        self.id = id
    }
    
  init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserCodingKeys.self)
        let userContainer = try container.nestedContainer(keyedBy: UserCodingKeys.UserCodingKeys.self, forKey: .user)
        email = try userContainer.decode(String.self, forKey: .email)
        firstName = try userContainer.decode(String.self, forKey: .firstName)
        lastName = try userContainer.decode(String.self, forKey: .lastName)
        role = try userContainer.decode(String.self, forKey: .role)
        id = try userContainer.decode(String.self, forKey: .id)
    }
    
}
