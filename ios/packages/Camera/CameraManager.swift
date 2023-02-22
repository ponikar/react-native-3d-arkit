//
//  CameraManager.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//

@objc(CameraManager)
class CameraManager: RCTViewManager {
  override func view() -> UIView! {
    return Camera()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override static func moduleName() -> String! {
    return "Camera"
  }
}

