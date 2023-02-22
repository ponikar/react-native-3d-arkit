//
//  Camera.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//

import UIKit
import ARKit

class Camera: UIView {
  
  var camera: SCNCamera!
  var cameraNode: SCNNode!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  func initCamera() {
    camera = SCNCamera()
    cameraNode = SCNNode()
    cameraNode.camera = camera
    setPosition()
  }
  
  func setPosition() {
    cameraNode.position = SCNVector3(x: 0, y: 0, z: 1.5)
  }
  
  func addCameraToScene() {
    Context.sceneView.pointOfView = cameraNode
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
