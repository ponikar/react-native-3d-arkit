//
//  Scene.swift
//  ARModal
//
//  Created by Ponikar Darshan janardan on 22/02/23.
//



class Scene: UIView {
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    Context.sceneView = SCNView(frame: self.bounds)
    Context.sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    Context.scene = SCNScene()
    self.addSubview(Context.sceneView)
    
  }
  
  required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
  }
}
