//
//  Cube.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//


class Cube: UIView {
  
  var cubeGeometry: SCNBox!
  var cubeNode: SCNNode!
   
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
    
    Context.scene.rootNode.addChildNode(cubeNode)
     
  }
  
  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  
}
