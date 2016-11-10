//
//  Recipient+CoreDataProperties.swift
//  SlapChat
//
//  Created by Arvin San Miguel on 11/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData


extension Recipient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipient> {
        return NSFetchRequest<Recipient>(entityName: "Recipient");
    }

    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var twitterHandle: String?
    @NSManaged public var messages: NSSet?

}

// MARK: Generated accessors for messages
extension Recipient {

    @objc(addMessagesObject:)
    @NSManaged public func addToMessages(_ value: Message)

    @objc(removeMessagesObject:)
    @NSManaged public func removeFromMessages(_ value: Message)

    @objc(addMessages:)
    @NSManaged public func addToMessages(_ values: NSSet)

    @objc(removeMessages:)
    @NSManaged public func removeFromMessages(_ values: NSSet)

}
