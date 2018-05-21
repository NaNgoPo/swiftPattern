import UIKit

/// An example of singleton object
/// - SINGLETON required an private init() function, to make sure no one can create an instance of this.
/// - SINGLETON holded current object in a static var, that can be access as class variable, can be use anywhere whiout NEW operator
///

class ConfigSingleton: NSObject {
    /**
     The static variable to hold my object
     */
    static let sharedInstance = ConfigSingleton()
    var color = UIColor.black// default test
    /**
     The initialization function should be come private, so nothing can create this class except the current instance
     */
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
