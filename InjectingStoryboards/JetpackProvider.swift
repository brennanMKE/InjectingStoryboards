//
//  JetpackProvider.swift
//  InjectingStoryboards
//
//  Created by Brennan Stehling on 2/8/18.
//  Copyright © 2018 Jetpack. All rights reserved.
//

import Foundation

class JetpackProvider: NSObject {
    
    @IBInspectable var name: String!
    
    func prepareJetpack() -> Jetpack {
        assert(name != nil, "Property must be defined: name")
        return Jetpack(name: name, firing: false)
    }
    
}
