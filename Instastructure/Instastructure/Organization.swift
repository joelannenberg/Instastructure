//
//  Organization.swift
//  Instastructure
//
//  Created by Joel Annenberg on 4/13/16.
//  Copyright © 2016 Joel A. All rights reserved.
//

import UIKit
import Parse

class Organization: NSObject {
    
    class func createOrganization (withName name: String?, withId id: Int?, withCompletion completion: PFBooleanResultBlock?) {
        
        // Create parse object PFObject
        let organization = PFObject(className: "Organization")
        
        // Add relevant fields to the object
        organization["name"] = PFUser.currentUser()
        organization["id"] = ""
        
        // Save object (following function will save the object in Parse asynchronously)
        organization.saveInBackgroundWithBlock(completion)
    }
    
}
