//
//  Scene.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//



class Scene: UIView {
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    // create the view initially
    Context.sceneView.frame = frame
    Context.sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    // just plug the scene that we created long time ago
    Context.sceneView.scene = Context.scene
    self.addSubview(Context.sceneView)
    
    
    // For now We will only have one camera which will control scene
    Context.mainCamera = SCNCamera()
    Context.mainCameraNode = SCNNode()
    
    Context.mainCameraNode.camera = Context.mainCamera
    Context.mainCameraNode.position = SCNVector3(0, 0, 0.5)
    Context.sceneView.pointOfView = Context.mainCameraNode
    
  }
  
  required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
  }
}
