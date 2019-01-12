//
//  extensionSetAnimationDelegate.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController: CAAnimationDelegate{
    
    @objc func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
     
        
        
    }
    
   @objc  func control(window: UIWindow?, segueIdentifier: String) {
        if(window == nil){
            return
        }
        else{
            present(animateTransition(controllerIdentifier: segueIdentifier), animated: false, completion: nil)
            return
        }
    }
    
    
    
}

