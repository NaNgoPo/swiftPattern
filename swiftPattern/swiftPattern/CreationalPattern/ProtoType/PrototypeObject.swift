//
//  PrototypeObject.swift
//  swiftPattern
//
//  Created by ADMIN on 5/23/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//

import UIKit
/// An example of PROTOTYPE OBJ techniques
/// - PROTOTYPE OBJ used to clone an object, that already existed, can be use to avoid the cost on update value from networking/heavy calculated object
class PrototypeObject: NSObject {
    /**
     An heavy network tasking request information. Assumming it exited
     */
    var property1 = "props1"
    /**
      An heavy calcul tasking request information. Assumming it exited
     */
    var property2 = "props2"
    override init() {
        
    }
    func clone(_ input:PrototypeObject){
       let clonedObjec = PrototypeObject()
        clonedObjec.property1 = self.property1
        clonedObjec.property2 = self.property2
    }
}
