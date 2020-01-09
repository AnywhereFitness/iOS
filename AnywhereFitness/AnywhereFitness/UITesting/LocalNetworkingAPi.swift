//
//  LocalNetworkingAPi.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/9/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation

extension AnytimeFitnessAPI {
    
    //MARK: - Properties
    var mockDataURL: URL {
          return Bundle.main.url(forResource: "MockMessages", withExtension: "json")!
      }
    
    //MARK: - Helper Methods
    func localLogin(withEmail email: String, password: String, completion: @escaping() -> Void = {}){
          let loginURL = baseURL.appendingPathComponent("auth").appendingPathComponent("login")
          
          var request = URLRequest(url: loginURL)
          request.httpMethod = "POST"
          request.setValue("application/json", forHTTPHeaderField: "Content-Type")
          
          let json = """
                           {
                                "email" : "\(email)",
                                "password" : "\(password)"
                           }
                           """
          
          let jsonData = json.data(using: .utf8)
          request.httpBody = jsonData
          
          URLSession.shared.dataTask(with: request) { (data, response, error) in
              if let response = response as? HTTPURLResponse {
                  print(response.statusCode)
              }
              
              if let error = error {
                  print("error logging in user: \(error.localizedDescription)")
                  return
              }
              guard let data = data else { return }
                     
                     do {
                      let decoder = JSONDecoder()
                    // print(String(data: data, encoding: .utf8))
                     self.user = try decoder.decode(UserRepresentation.self, from: data)
                     self.token = try decoder.decode(BearerToken.self, from: data)
                     } catch {
                      print("error decoding data: \(error)")
              }
          }.resume()
         
      }
      
      func localRegister(withEmail email: String, password: String, role: String, firstName: String, lastName: String){
          let registerURL = baseURL.appendingPathComponent("auth").appendingPathComponent("register")
             
             var request = URLRequest(url: registerURL)
             request.httpMethod = "POST"
             request.setValue("application/json", forHTTPHeaderField: "content-type")
             
             let json = """
                              {
                                   "email" : "\(email)",
                                  "password" : "\(password)",
                                  "firstName": "\(firstName)",
                                  "lastName": "\(lastName)",
                                  "role": "\(role)"
                              }
                              """
          
             let jsonData = json.data(using: .utf8)
             request.httpBody = jsonData
             
             URLSession.shared.dataTask(with: request) { (data, response, error) in
                 if let response = response as? HTTPURLResponse {
                     print(response.statusCode)
                 }
                 
                 if let error = error {
                     print("error logging in user: \(error)")
                     return
                 }
                 guard let data = data else { return }
                        
                        do {
                         let decoder = JSONDecoder()
                         self.user = try decoder.decode(UserRepresentation.self, from: data)
                         self.token = try decoder.decode(BearerToken.self, from: data)
                        } catch {
                         print("error decoding token: \(error)")
                 }
          }.resume()
            
      }
}
