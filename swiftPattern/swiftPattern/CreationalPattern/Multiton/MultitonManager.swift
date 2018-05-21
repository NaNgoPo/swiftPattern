import UIKit

/// An example of singleton object
/// - MULTITON required an dictionary that hold all singleton from our app, to keep it safe in an stack.
/// - MULTITON can be implemented as a class or singleton class, it should be choice by you, this example refer to a normal class, but can be change to singleton
///

class MultitonManager: NSObject {
    private var configDictionary:Dictionary<String,Any> = [:]
    /**
     An example function of get singleton array
     - MULTITON can set up a function public scope inside the so user can use it to access singleton, can be decopling code
     */
    func sharedConfig(_ className:String) -> Any{
        var result = configDictionary[className]
        if(result == nil){
            switch className {
            case "ConfigSingleton":
                result =  ConfigSingleton.sharedInstance
                break
            case "ConfigServerSingleton":
                result =  ConfigServerSingleton.sharedInstance
                break
            default:
                break
            }
            configDictionary["ConfigSingleton"] = result
        }
        return result  ?? NSNull()
    }
}
