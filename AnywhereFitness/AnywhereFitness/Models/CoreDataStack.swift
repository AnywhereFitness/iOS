//
//  CoreDataStack.swift
//  AnywhereFitness
//
//  Created by brian vilchez on 1/8/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()
    
    var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "AnywhereFitness")
        container.loadPersistentStores { (_, error) in
            if let error = error as NSError? {
                NSLog("failed to load from persisten store: \(error)")
            }
        }
        return container
    }()
    
    var context: NSManagedObjectContext  {
        return container.viewContext
    }
}
