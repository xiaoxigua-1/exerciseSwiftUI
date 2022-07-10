//
//  Persistent.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/10.
//

import CoreData

class DataController: ObservableObject {
    static let shared = DataController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Model")
        container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
