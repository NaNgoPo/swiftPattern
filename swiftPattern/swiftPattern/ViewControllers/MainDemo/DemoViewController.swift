import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoFactoryMethod()
    }
    func demoSingleton(){
        // [Singleton] example: you can call the function and props
        self.view.backgroundColor = ConfigSingleton.sharedInstance.testAppColor() //   --> how to call a singleton function.
        self.view.backgroundColor = ConfigSingleton.sharedInstance.color //  --> how to call a singleton props.
    }
    func demoMultiton(){
        // [Multiton] example: you can take the singleton that saved from multiton manager, that can be object or a singleton it-self
        let multiton = MultitonManager()
        let configObject = multiton.sharedConfig("ConfigServerSingleton") as! ConfigServerSingleton
        self.view.backgroundColor = configObject.getColor()
    }
    func demoFactoryMethod(){
        let factory1 = Factory1()
        let factory2 = Factory2()
        var listOfItem = [FactoryItemBase]()
        for i in 0...10{
            let button1Style = factory1.createObject()
            button1Style.setUnique(uniqueString: "\(i)-button1")
            let button2Style = factory2.createObject()
            button2Style.setUnique(uniqueString: "\(i)-button2")
            listOfItem.append(button1Style)
            listOfItem.append(button2Style)
        }
        for item in listOfItem{
            item.printMe()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
