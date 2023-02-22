
@objc(ARViewManager)
class ARViewManager: RCTViewManager {
  override func view() -> UIView! {
    return ARView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override static func moduleName() -> String! {
    return "ARView"
  }
}
