//
//  Data+CoreDataProperties.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/10.
//
//

import Foundation
import CoreData


extension Data {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Data> {
        return NSFetchRequest<Data>(entityName: "Data")
    }

    @NSManaged public var temperature: Int32
    @NSManaged public var time: Date?
    @NSManaged public var day: Date?

}

extension Data : Identifiable {

}
