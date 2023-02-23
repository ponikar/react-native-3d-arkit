//
//  CubeManager.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 23/02/23.
//

import Foundation

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
