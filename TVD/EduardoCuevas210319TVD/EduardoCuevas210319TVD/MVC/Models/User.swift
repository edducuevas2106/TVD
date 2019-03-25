//
//  user.swift
//  EduardoCuevas210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class User: NSObject
{
    var firstName: String!
    var lastName: String!
    
    init(firstName: String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
    }
}
