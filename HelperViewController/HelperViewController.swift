//
//  HelperViewController.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class HelperViewController: UIViewController {

    var screenSize        = UIScreen.main.bounds
    var gradientColor     = [0x009efd,0x2af598]
    var gradientLayer     = CAGradientLayer()
    let animationKey      = "animatedb"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillLayoutSubviews() {
        gradientLayer.frame = self.view.frame
        
        gradientLayer.frame.size.height += 500
        
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
