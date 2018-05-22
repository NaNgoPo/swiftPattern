import UIKit
/// An example of Factory method
/// - This is a real Factory inherited from ObjectFactory that used to generate FactoryItem2

class Factory1: CoreFactory {
    /**
     To create a real instance of object
     - Return: an instance of  item 1
     */
    override func createObject() -> FactoryItemBase {
        return FactoryItem1()
    }
}
