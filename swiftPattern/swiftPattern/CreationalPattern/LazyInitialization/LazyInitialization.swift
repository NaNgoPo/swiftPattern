
import UIKit

/// An example of lazy initializtion object
/// - LAZY INITIALIZATION is a technique that delay the creation of expensive object until it needed, Swift support lazy keyword to help us create an lazy initialization object, must be use as **var** keyword

class LazyInitialization: NSObject {
    /**
     An example to create an lazy var
     - LAZY INITIALIZATION help us to remove some complex initialize from init function
     */
    lazy var lazyVarExample = [String]()
}
