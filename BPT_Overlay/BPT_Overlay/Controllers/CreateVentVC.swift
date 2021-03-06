//
//  CreateVentVC.swift
//  BPT_Overlay
//
//  Created by Basith on 30/03/20.
//  Copyright © 2020 Agaze. All rights reserved.
//

import UIKit

class CreateVentVC: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var overLayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        overLayView.isHidden = true
        bottomView.isHidden = true
        setupGestures()
 
    }
    @IBAction func homeAction(_ sender: Any) {
        navigateToHome()
    }
    
    @IBAction func bubbleBrowserAction(_ sender: Any) {
        navigateToBubbleBrowser()
    }
    func setupGestures(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector (self.openBottomNavigation))
        gesture.direction = .up
        self.view.addGestureRecognizer(gesture)
        
        let bottomgesture = UISwipeGestureRecognizer(target: self, action: #selector (self.closeBottomNavigation))
        bottomgesture.direction = .down
        self.view.addGestureRecognizer(bottomgesture)
        
    }
    @objc func openBottomNavigation(){
        overLayView.isHidden = false
        bottomView.isHidden = false
    }
    @objc func closeBottomNavigation(){
        overLayView.isHidden = true
        bottomView.isHidden = true
    }
    
    func navigateToHome(){
        print("wirte the code to navigate to home")
    }
    func navigateToBubbleBrowser(){
        print("wirte the code to navigate to BubbleBrowser")
    }
    
}
