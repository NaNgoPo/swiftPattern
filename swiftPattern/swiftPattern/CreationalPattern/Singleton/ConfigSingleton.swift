//
//  ConfigSingleton.swift
//  swiftPattern
//
//  Created by ADMIN on 5/21/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//
/*:
 ### NOTES:
 - SINGLETON required an private init() function, to make sure no one can create an instance of this.
 - SINGLETON holded current object in a static var, that can be access as class variable, can be use anywhere whiout NEW operator
 */
import UIKit

class ConfigSingleton: NSObject {
    static let sharedInstance = ConfigSingleton()
    var color = UIColor.black// default test
    
    override private init() {//do anything to setup the app singleton
        super.init()
        self.setUpApp()
    }
    func setUpApp(){
        color = UIColor.blue
    }
    /**
     An example function of singleton, you can access it anywhere whithout using the new object, preventing no-needed object creation
     - SINGLETON can set up a function public scope inside the static variable, so user can use it
     */
    func testAppColor() -> UIColor{
        return UIColor.black
    }
}
