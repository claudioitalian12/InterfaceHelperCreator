//
//  extesionInizializeObject.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
   @objc  func generateTextField(object: UITextField, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat) -> UITextField{
        
        object.layer.position = setPosition(screenSize: screenSize, perCentX: perCentX, perCentY: perCentY)
        
        object.frame.size = setSize(screenSize: screenSize, perCentWidth: perCentWidth, perCentHeight: perCentHeight)
        
        
        object.textColor = UIColor.white
        object.textAlignment = .left
    
        
        object.layer.addBorder(edge: .bottom, color: .white, thickness: 0.5)
        
        
        
        return object
    }
    

    @objc  func generateUiLabel(object: UILabel, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat) -> UILabel{
        
        object.layer.position = setPosition(screenSize: screenSize, perCentX: perCentX, perCentY: perCentY)
        
        object.frame.size = setSize(screenSize: screenSize, perCentWidth: perCentWidth, perCentHeight: perCentHeight)
        
        
        object.textColor = .white
        object.textAlignment = .left
        object.font = UIFont(name: "Kailasa", size: object.frame.size.height / 3)
        
        object.font = object.font.bold()

        
        return object
    }
    
    
   @objc  func generateButton(object: UIButton, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat) -> UIButton{
        
        object.layer.position = setPosition(screenSize: screenSize, perCentX: perCentX, perCentY: perCentY)
        
        object.frame.size = setSize(screenSize: screenSize, perCentWidth: perCentWidth, perCentHeight: perCentHeight)
        
        
        
        object.layer.cornerRadius = 5
        object.layer.borderWidth = 1
        object.layer.borderColor = UIColor.white.cgColor
    
        return object
        
    }
    
//    Logo
    
    
    
  @objc   func generateImage(object: UIImageView, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat) -> UIImageView{
        
        object.layer.position = setPosition(screenSize: screenSize, perCentX: perCentX, perCentY: perCentY)
        
        object.frame.size = setSize(screenSize: screenSize, perCentWidth: perCentWidth, perCentHeight: perCentHeight)
    
        
        return object
        
    }
    
    @objc   func generateView(object: UIView, screenSize: CGRect , perCentX: CGFloat, perCentY: CGFloat, perCentWidth: CGFloat, perCentHeight: CGFloat) -> UIView{
        
        object.layer.position = setPosition(screenSize: screenSize, perCentX: perCentX, perCentY: perCentY)
        
        object.frame.size = setSize(screenSize: screenSize, perCentWidth: perCentWidth, perCentHeight: perCentHeight)
        
    
        
        object.layer.addBorder(edge: .top, color: .white, thickness: 1)
        
        return object
        
    }
    
    

    
}
