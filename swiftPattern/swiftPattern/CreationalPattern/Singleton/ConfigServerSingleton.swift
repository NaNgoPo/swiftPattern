//
//  ConfigServerSingleton.swift
//  swiftPattern
//
//  Created by ADMIN on 5/21/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//

import UIKit
/*
 Please prefer to ConfigSingleton.swift for more explain!!!
 */
class ConfigServerSingleton: NSObject {
    static let sharedInstance = ConfigServerSingleton()
    
    override private init() {//do anything to setup the app singleton
        
    }
    func getColor() -> UIColor{
        return UIColor.yellow
    }
}
