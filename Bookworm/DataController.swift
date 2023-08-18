//
//  DataController.swift
//  Bookworm
//
//  Created by Anastasiia Solomka on 18.07.2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm") //we ask use Bookwarm.xcdatamodeld file as container. it's not loaded here but we do some preparation here. and it's not load some data, it's loads data (properties and their types)
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("CoreData failed to load: \(error.localizedDescription)")
            }
        }
    }
}
