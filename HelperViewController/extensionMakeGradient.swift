//
//  extensionMakeGradient.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
    @objc func setGradientInitial(){
          makeGradient(view: view, start: gradientColor.first!, end: gradientColor.last!, layer: gradientLayer)
    }
    
   @objc  func makeGradient(view: UIView, start: Int, end: Int, layer : CAGradientLayer){
          layer.frame = view.bounds
          layer.colors = [UIColor(rgb: start).cgColor, UIColor(rgb: end).cgColor]
          layer.startPoint = CGPoint(x: 0, y: 0)
          layer.endPoint = CGPoint(x:1.5, y:1.5)
          view.layer.addSublayer(layer)
    }

    
}
