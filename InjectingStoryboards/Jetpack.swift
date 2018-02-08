//
//  Jetpack.swift
//  InjectingStoryboards
//
//  Created by Brennan Stehling on 2/8/18.
//  Copyright © 2018 Jetpack. All rights reserved.
//

import Foundation

struct Jetpack {
    let name: String
    var firing: Bool = false
    
    mutating func startFiring() {
        firing = true
    }
    
    mutating func stopFiring() {
        firing = false
    }
}
