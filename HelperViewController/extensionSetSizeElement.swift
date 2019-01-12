//
//  extensionSetSizeElement.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
    
    
   @objc  func setSize(screenSize: CGRect, perCentWidth: CGFloat, perCentHeight: CGFloat) -> CGSize{
        let elementWidth = setWidthElement(screenWidth: screenSize.width, perCent: perCentWidth)
        let elementHeight = setHeightElement(screenHeight: screenSize.height, perCent: perCentHeight)
        return CGSize(width: elementWidth, height: elementHeight)
    }
    
   @objc  func setWidthElement(screenWidth: CGFloat, perCent: CGFloat) -> CGFloat{
        return screenWidth / perCent
    }
    
   @objc  func setHeightElement( screenHeight: CGFloat, perCent: CGFloat) -> CGFloat{
        return screenHeight / perCent
    }
    
    
}
