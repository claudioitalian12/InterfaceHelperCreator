//
//  extensionSetElementInView.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
    
   @objc  func setElementInView(view: UIView, object: Any, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat){
        
        
        switch type(of: object) {
            
        case is UITextField.Type:
            view.addSubview(generateTextField(object: object as! UITextField, screenSize: screenSize, perCentX: perCentX, perCentY: perCentY, perCentWidth: perCentWidth, perCentHeight: perCentHeight))
            
        case is UIButton.Type:
            view.addSubview(generateButton(object: object as! UIButton, screenSize: screenSize, perCentX: perCentX, perCentY: perCentY, perCentWidth: perCentWidth, perCentHeight: perCentHeight))
            
        case is UIImageView.Type:
            view.addSubview(generateImage(object: object as! UIImageView, screenSize: screenSize, perCentX: perCentX, perCentY: perCentY, perCentWidth: perCentWidth, perCentHeight: perCentHeight))
            
        case is UILabel.Type:
            view.addSubview(generateUiLabel(object: object as! UILabel, screenSize: screenSize, perCentX: perCentX, perCentY: perCentY, perCentWidth: perCentWidth, perCentHeight: perCentHeight))
  
        case is UIView.Type:
            view.addSubview(generateView(object: object as! UIView, screenSize: screenSize, perCentX: perCentX, perCentY: perCentY, perCentWidth: perCentWidth, perCentHeight: perCentWidth))
            
       
        default:
            break
        }
        
        
    }
    
    
    
    
}

