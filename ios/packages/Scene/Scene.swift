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
    
    Context.sceneView.showsStatistics = true
    loadIronMan()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func loadIronMan() {
    
    guard let modelURL = Bundle.main.url(forResource: "iron-man", withExtension: "json") else {
      print("Cannot find iron-man.json")
      return
    }
    do {
      print("IRON MAN IS BACK!")
      
      let sceneSource = SCNSceneSource(url: modelURL, options: nil)!
      let scene = try sceneSource.scene(options: nil)
      
      // Create a node to hold the model
      let modalNode: SCNNode = SCNNode()
      
      // Add the model to the node
      for childNode in scene.rootNode.childNodes {
          modalNode.addChildNode(childNode)
      }
      
      Context.scene.rootNode.addChildNode(modalNode)
      print("IRON MAN IS BACK!")
    } catch let error {
      print("Error loading model: \(error.localizedDescription)")
      }
    }

     
  }

