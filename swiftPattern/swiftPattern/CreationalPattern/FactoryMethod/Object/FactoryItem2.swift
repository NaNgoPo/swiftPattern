import UIKit
/// An example of Factory method
/// - A real object that used in code, in example it's a button with background black with FactoryItem1, and  a button with background red with FactoryItem2

class FactoryItem2: FactoryItemBase {
    /**
     Real implement of object, will return red background
     - Return: none
     */
    override func setColor() {
        self.backgroundColor = UIColor.red
    }
}
