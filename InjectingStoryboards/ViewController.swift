//
//  ViewController.swift
//  InjectingStoryboards
//
//  Created by Brennan Stehling on 2/8/18.
//  Copyright © 2018 Jetpack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // Defined by an object which is created by the Storboard
    @IBOutlet var jetpackProvider: JetpackProvider!
    
    // An instance of Jetpack is created by JetpackProvider
    var jetpack: Jetpack!

    override func viewDidLoad() {
        super.viewDidLoad()
        assert(jetpackProvider != nil, "Property must be defined: jetpackProvider")
        jetpack = jetpackProvider.prepareJetpack()
        nameLabel.text = jetpack.name
    }

}
