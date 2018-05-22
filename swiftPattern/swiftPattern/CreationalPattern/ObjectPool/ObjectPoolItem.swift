
import UIKit
/// An example of OBJECT POOL techniques
/// - OBJECT POOL Item have a special props, that indicated it is in-used or not
class ObjectPoolItem: NSObject {
    /**
     Variable that hold the status of object
     */
    var isFreeObject = true
    /**
     Variable that hold unique id of an object, i added it myseft for testing purpose, you can remove from the pattern
     */
    var uniqueID = -1
}
