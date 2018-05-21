
import UIKit
/// An example of Factory method
/// - This is a root Factory, used to manage all common properties or function

class CoreFactory: NSObject {
    /**
     Common Factory method for all of the factory
     - Return: an object that ready to use in our application, in this case it return an base object FactoryItemBase, not the real FactoryItemBase1 nor FactoryItemBase2
     */
    func createObject() -> FactoryItemBase{
        
    }
}
