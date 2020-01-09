//
//  AnywhereFitnessTests.swift
//  AnywhereFitnessTests
//
//  Created by Brandi Bailey on 1/7/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import XCTest
@testable import AnywhereFitness

class AnywhereFitnessTests: XCTestCase {

    let anyTImeAPI = AnytimeFitnessAPI()
    
    func testLogin() {
        anyTImeAPI.testLogin(withEmail: "test123@gmail.com", password: "123456") { (error) in
            if let error = error {
                NSLog("error login user in: \(error)")
                XCTAssert(false, "failed to login😭")
                return
            } else {
                XCTAssert(true, "🤗")
            }
        }
        
        guard let user = anyTImeAPI.user else { return }
        
        if user.firstName == "bail" && user.lastName == "sorgana" {
            XCTAssert(true, "🔥")
        } else {
            XCTAssert(false, "🖕🏻")
        }
    }
    
    func testRegister() {
        anyTImeAPI.testRegister(withEmail: "halo@gmail.com", password: "123456", role: "instructor", firstName: "margarita", lastName: "bargas") { (error) in
            if let error = error {
                NSLog("error registering new user: \(error)")
                XCTAssert(false, "WHY?!?!?!?!")
            } else {
                XCTAssert(true, "🙌🏻")
            }
        }
        
        guard let user = anyTImeAPI.user else { return }
               
        if user.firstName == "margarita" && user.lastName == "bargas" && anyTImeAPI.token != nil {
                   XCTAssert(true, "🔥")
               } else {
                   XCTAssert(false, "🖕🏻")
               }
        
    
    }
    
    func testCreatingClass() {}
    
    func testUpdateClass() {}
    
    func testSignout() {
        anyTImeAPI.signOut()
        if anyTImeAPI.token == nil {
            XCTAssert(true)
        } else {
            XCTAssert(false, "failed to log out.")
        }
    }
    
}
