import UIKit
/// An example of OBJECT POOL techniques
/// - OBJECT POOL create and cached objects, when some thing need it: firstly check the pool have any "free" object. If not create new one, if existed return the object
class ObjectPoolManager: NSObject {
    /**
     A set of objects that created, it can be hold inside the memory, you can limit the number of items inside set to keep the memory as your expected
     */
    var objectList = [ObjectPoolItem]()
    /**
     Function to get an item from Pool
     - Return: an instance of object in pool, or an new item
     */
    func requestAnItem() -> ObjectPoolItem{
        for object in objectList{
            if(object.isFreeObject){
                object.isFreeObject = false
                return object
            }
        }
        let newPoolItem = ObjectPoolItem() // return new object in case i need, also added the index unique for testing purpose
        newPoolItem.uniqueID = objectList.count
        newPoolItem.isFreeObject = false
        objectList.append(newPoolItem)
        return newPoolItem
    }
    /**
     Function to return an object back to pool
     - Return: none
     */
    func returnObjectToPool(object:ObjectPoolItem){
        object.isFreeObject = true
    }
}
