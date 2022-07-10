//
//  Entity+CoreDataProperties.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/10.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var temperature: Int32
    @NSManaged public var time: Date?
    @NSManaged public var day: Date?

}

extension Entity : Identifiable {

}
