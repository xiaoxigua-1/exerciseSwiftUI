//
//  TestData+CoreDataProperties.swift
//  test
//
//  Created by ptivs-mac2 on 2022/7/10.
//
//

import Foundation
import CoreData


extension TestData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TestData> {
        return NSFetchRequest<TestData>(entityName: "TestData")
    }

    @NSManaged public var temperature: Int32
    @NSManaged public var time: Date?
    @NSManaged public var day: Date?

}

extension TestData : Identifiable {

}
