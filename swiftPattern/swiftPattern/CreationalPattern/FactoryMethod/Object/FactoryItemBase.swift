import UIKit
/// An example of Factory method
/// - You should move all the inherit, props, function to this base class to keep the code clean!!
/// - A real object that used in code, in example it's a button with background black with FactoryItem1, and  a button with background red with FactoryItem2

class FactoryItemBase: UIButton {
    var uniqueName = ""
    /**
     Function of super Item, will return no-color background
     - Return: none
     */
    func setColor(){
        self.backgroundColor = UIColor.clear // default is clear
    }
    func setUnique(uniqueString:String){
        uniqueName = uniqueString
    }
    func printMe(){
        print("\(uniqueName)")
    }
}
