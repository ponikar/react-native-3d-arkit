//
//  Camera.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//

import UIKit
import ARKit

class Camera: UIView {
  
  var camera = Context.mainCamera!
  var cameraNode = Context.mainCameraNode!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
