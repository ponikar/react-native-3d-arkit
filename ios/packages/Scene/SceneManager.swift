//
//  SceneManager.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//

@objc(SceneManager)
class SceneManager: RCTViewManager {
  override func view() -> UIView! {
    return Scene()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override static func moduleName() -> String! {
    return "Scene"
  }
}
