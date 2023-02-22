//
//  CubeManager.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//


@objc(CubeManager)
class CubeManager: RCTViewManager {
  override func view() -> UIView! {
    return Cube()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override static func moduleName() -> String! {
    return "Cube"
  }
}



