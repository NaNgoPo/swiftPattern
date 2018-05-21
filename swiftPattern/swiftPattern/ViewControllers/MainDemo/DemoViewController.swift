//
//  DemoViewController.swift
//  swiftPattern
//
//  Created by ADMIN on 5/21/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//  To make a refrence please type [PATTERN_NAME] to find the pattern you need

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // [Singleton] example: you can call the function and props
        self.view.backgroundColor = ConfigSingleton.sharedInstance.testAppColor() //   --> how to call a singleton function.
        self.view.backgroundColor = ConfigSingleton.sharedInstance.color //  --> how to call a singleton props.
        // [Multiton] example: you can take the singleton that saved from multiton manager, that can be object or a singleton it-self
        let multiton = MultitonManager()
        let configObject = multiton.sharedConfig("ConfigServerSingleton") as! ConfigServerSingleton
        self.view.backgroundColor = configObject.getColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
