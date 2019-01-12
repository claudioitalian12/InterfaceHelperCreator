//
//  extensionSetAnimation.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HelperViewController{
    
    @objc func addAnimationInterface(time: Double, value: String, forKey: String) -> CABasicAnimation{
          let fadeIn = CABasicAnimation(keyPath: "opacity")
      
          fadeIn.fromValue = 0.0
          fadeIn.toValue = 1.0
          fadeIn.duration = 1.0
          fadeIn.fillMode = CAMediaTimingFillMode.backwards
          fadeIn.beginTime = CACurrentMediaTime() + time
          fadeIn.delegate = self
          fadeIn.setValue(value, forKey: forKey)
          return fadeIn
    }
    
    
    @objc func animateButtonClick(value: String, forKey: String) -> CASpringAnimation{
        let pop = CASpringAnimation(keyPath: "transform.scale")
        
        pop.fromValue = 1.2
        pop.toValue = 1
        pop.duration = pop.settlingDuration
        pop.initialVelocity = 2
        pop.damping = 10
        pop.delegate = self
        pop.setValue(value, forKey: forKey)
        return pop
    }
    
    @objc  func rotateDegrees(duration: CFTimeInterval,value: String, forKey: String) -> CABasicAnimation{
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
   
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(Double.pi )
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = duration
        rotateAnimation.delegate = self
        rotateAnimation.setValue(value, forKey: forKey)
        return rotateAnimation
    }
    
    
    @objc  func animateTransition(controllerIdentifier: String) -> UIViewController{
           let transition = CATransition()
    
           transition.duration = 0.27
           transition.type = CATransitionType.reveal
           transition.subtype = CATransitionSubtype.fromTop
           transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
           view.window!.layer.add(transition, forKey: kCATransition)
           let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: controllerIdentifier)
        
           return presentedVC
    }
    
    
    @objc  func fadeRotate(button: UIButton, duration : TimeInterval){
        let rotate = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        // initial transform
        button.alpha = 0
        button.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        // initial spin for duration of animaton
        UIView.animate(withDuration: duration,
                       delay: 0.0,
                       options: [.curveLinear],
                       animations: {
                       button.transform = rotate;
        },
                       completion: nil)
        // scaling and fading
        UIView.animate(withDuration: duration/2.0, animations: {
           button.transform = button.transform.scaledBy(x: 1, y: 1)
            button.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi * 2))
            button.alpha = 1
        }) { (true) in
            button.isUserInteractionEnabled = true
        }
    }
    
    
}
