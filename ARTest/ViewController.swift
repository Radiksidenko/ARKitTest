//
//  ViewController.swift
//  ARTest
//
//  Created by Radomyr Sidenko on 16.05.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // Set the view's delegate
//        sceneView.delegate = self
//
//        // Show statistics such as fps and timing information
//        sceneView.showsStatistics = true
//
//        // Create a new scene
//        let scene = SCNScene(named: "art.scnassets/ship.scn")!
//
//        // Set the scene to the view
//        sceneView.scene = scene
            addBox()
    }
    
    
    func addBox() {
        
        let line = SCNBox(width: 0.05, height: 0.01, length: 0.01, chamferRadius: 0)
        let line2 = SCNBox(width: 0.09, height: 0.01, length: 0.01, chamferRadius: 0)
        let line3 = SCNBox(width: 0.11, height: 0.02, length: 0.01, chamferRadius: 0)
        let line4 = SCNBox(width: 0.1, height: 0.01, length: 0.01, chamferRadius: 0)
        let line5 = SCNBox(width: 0.07, height: 0.01, length: 0.01, chamferRadius: 0)
        let line6 = SCNBox(width: 0.04, height: 0.01, length: 0.01, chamferRadius: 0)
        
        line.firstMaterial?.diffuse.contents = UIColor.yellow
        line2.firstMaterial?.diffuse.contents = UIColor.yellow
        line3.firstMaterial?.diffuse.contents = UIColor.yellow
        line4.firstMaterial?.diffuse.contents = UIColor.yellow
        line5.firstMaterial?.diffuse.contents = UIColor.yellow
        line6.firstMaterial?.diffuse.contents = UIColor.yellow
        
        
        let lineNode = SCNNode()
        let lineNode2 = SCNNode()
        let lineNode3 = SCNNode()
        let lineNode4 = SCNNode()
        let lineNode5 = SCNNode()
        let lineNode6 = SCNNode()
        let lineNode7 = SCNNode()
        let lineNode8 = SCNNode()
        let lineNode9 = SCNNode()
        let lineNode10 = SCNNode()
        let lineNode11 = SCNNode()
        
        lineNode.geometry = line
        lineNode2.geometry = line2
        lineNode3.geometry = line3
        lineNode4.geometry = line4
        lineNode5.geometry = line5
        lineNode6.geometry = line6
        lineNode7.geometry = line5
        lineNode8.geometry = line4
        lineNode9.geometry = line3
        lineNode10.geometry = line2
        lineNode11.geometry = line
        
        
        lineNode.position = SCNVector3(0, 0, 0)
        lineNode2.position = SCNVector3(0, -0.01, 0)
        lineNode3.position = SCNVector3(0, -0.025, 0)
        lineNode4.position = SCNVector3(0.015, -0.04, 0)
        lineNode5.position = SCNVector3(0.03, -0.05, 0)
        lineNode6.position = SCNVector3(0.045, -0.06, 0)
        lineNode7.position = SCNVector3(0.03, -0.07, 0)
        lineNode8.position = SCNVector3(0.015, -0.08, 0)
        lineNode9.position = SCNVector3(0, -0.095, 0)
        lineNode10.position = SCNVector3(0, -0.11, 0)
        lineNode11.position = SCNVector3(0, -0.12, 0)
        
        
        let scene = SCNScene()
        
        scene.rootNode.addChildNode(lineNode)
        scene.rootNode.addChildNode(lineNode2)
        scene.rootNode.addChildNode(lineNode3)
        scene.rootNode.addChildNode(lineNode4)
        scene.rootNode.addChildNode(lineNode5)
        scene.rootNode.addChildNode(lineNode6)
        scene.rootNode.addChildNode(lineNode7)
        scene.rootNode.addChildNode(lineNode8)
        scene.rootNode.addChildNode(lineNode9)
        scene.rootNode.addChildNode(lineNode10)
        scene.rootNode.addChildNode(lineNode11)
        
        sceneView.scene = scene
    }
    
//         ██████████
//     ██████████████████
//   ██████████████████████
//   ██████████████████████
//       ████████████████████
//             ██████████████
//                   ████████
//             ██████████████
//       ████████████████████
//   ██████████████████████
//   ██████████████████████
//     ██████████████████
//         ██████████
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
//        sceneView.removeFromSuperview()
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet var outputImageView:UIImageView!
    @IBAction func photo(_ sender: Any) {
    var image = sceneView.snapshot()
        outputImageView.image = sceneView.snapshot()
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
    
    
    

}
