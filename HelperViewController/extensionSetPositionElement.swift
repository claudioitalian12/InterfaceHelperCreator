//
//  extensionSetPositionElement.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
   @objc  func setPosition(screenSize: CGRect, perCentX: CGFloat, perCentY: CGFloat) -> CGPoint{
        let elementPositionX = setPositionX( screenWidth: screenSize.width, perCent: perCentX)
        
        let elementPositionY = setPositionY( screenHeight: screenSize.height, perCent: perCentY)
        
        return CGPoint(x: elementPositionX, y: elementPositionY)
    }
    
   @objc  func setPositionX( screenWidth: CGFloat, perCent: CGFloat) -> CGFloat{
        return screenWidth / perCent
    }
    
   @objc  func setPositionY( screenHeight: CGFloat, perCent: CGFloat) -> CGFloat{
        return screenHeight / perCent
    }
    
}
