//
//  ClientRepresentation.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

class ClientRepresentation: Codable {
    
    let email: String
    let firstName: String
    let lastName: String
    let role: String
    let id: String
    
    private enum ClientCodingKeys: String, CodingKey {
      case user
        
        enum UserCodingKeys: String, CodingKey {
            case email
            case firstName
            case lastName
            case role
            case id
        }
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ClientCodingKeys.self)
        let userContainer = try container.nestedContainer(keyedBy: ClientCodingKeys.UserCodingKeys.self, forKey: .user)
        email = try userContainer.decode(String.self, forKey: .email)
        firstName = try userContainer.decode(String.self, forKey: .firstName)
        lastName = try userContainer.decode(String.self, forKey: .lastName)
        role = try userContainer.decode(String.self, forKey: .role)
        id = try userContainer.decode(String.self, forKey: .id)
    }
    
}
