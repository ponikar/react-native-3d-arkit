//
//  Cube.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//


class Cube: UIView {
  
  var cubeGeometry: SCNBox!
  var cubeNode: SCNNode!
  
  @objc var x: CGFloat = 0 {
    didSet {
      cubeNode.position.x = Float(x)
    }
  }
  
  @objc var y: CGFloat = 0 {
    didSet {
      cubeNode.position.x = Float(y)
    }
  }
  
  @objc var z: CGFloat = 0 {
    didSet {
      cubeNode.position.x = Float(z)
    }
  }
  
  @objc var width: CGFloat = 0.1 {
    didSet {
      cubeGeometry.width = width
    }
  }
  
  @objc var height: CGFloat = 0.1 {
    didSet {
      cubeGeometry.height = height
    }
  }
  
  @objc var rotateX: CGFloat = 0 {
    didSet {
      cubeNode.rotation.x = Float(rotateX)
    }
  }
  
  @objc var rotateY: CGFloat = 0 {
    didSet {
      cubeNode.rotation.y = Float(rotateY)
    }
  }

  @objc var rotateZ: CGFloat = 0 {
    didSet {
      cubeNode.rotation.z = Float(rotateZ)
    }
  }
  
  @objc var rotateDuration: CDouble = 0
  
  @objc var inifiniteRotation: CBool = false {
    didSet {
      if(inifiniteRotation) {
        let rotation = SCNAction.rotate(by: .pi, around: SCNVector3(1, 1, 1), duration: rotateDuration)
        cubeNode.runAction(SCNAction.repeatForever(rotation))
      } else {
         // remove rotation ...
      }
    }
  }
  
  
   
  override init(frame: CGRect) {
    super.init(frame: frame)
    
     cubeGeometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.0)
    cubeNode = SCNNode(geometry: cubeGeometry)
    
    // Todo Remove this :)
    
    // remove the materials
    let redMaterial = SCNMaterial()
    redMaterial.diffuse.contents = UIColor.red;
    
    // remove the geomatry later
    cubeNode.geometry?.materials = [redMaterial]
    cubeNode.position = SCNVector3(0.0, 0.0, -0.5)
    
    if(Context.scene != nil) {
      print("ADDING CUBE NODE TO SCENE")
      Context.scene.rootNode.addChildNode(cubeNode)
    }
     
  }
  
  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  
}
