//
//  ViewController.swift
//  InterfaceHelperCreator
//
//  Created by claudio Cavalli on 12/01/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import UIKit

class ViewController: HelperViewController {

    var nameTextField         = UITextField()
    var passwordTextField     = UITextField()
    
    var loginButton           = UIButton()
    var oneboardButton        = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }


    override func viewWillAppear(_ animated: Bool) {
        setGradientInitial()
        setElementInitial()
     
    }
    
}

extension ViewController{
    
    func setElementInitial(){
        
        setElementInView(view: view, object: nameTextField, screenSize: screenSize, perCentX: 8.8, perCentY: 2.5, perCentWidth: 1.3, perCentHeight: 20)
        
        setElementInView(view: view, object: passwordTextField, screenSize: screenSize, perCentX: 8.8, perCentY: 2.1, perCentWidth: 1.3, perCentHeight: 20)
        
        setElementInView(view: view, object: loginButton, screenSize: screenSize, perCentX: 6, perCentY: 1.7, perCentWidth: 1.5, perCentHeight: 20)
        
        setElementInView(view: view, object: oneboardButton, screenSize: screenSize, perCentX: 2.22, perCentY: 1.2, perCentWidth: 10, perCentHeight: 30)
        
          setDifferentsElement()
    }
    
}

extension ViewController{
    
    
    func setDifferentsElement(){
        
        setNameTextField()
        setPasswordTextField()
        setLoginButton()
        setOneboardButton()
        
    }
    
    
    func setNameTextField(){
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        nameTextField.returnKeyType = .continue
     
        nameTextField.layer.add(addAnimationInterface(time: 0.8, value: "nameTextField", forKey: animationKey), forKey: animationKey)
    }
    
    func setPasswordTextField(){
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        passwordTextField.returnKeyType = .done
 
        passwordTextField.isSecureTextEntry = true
        passwordTextField.layer.add(addAnimationInterface(time: 1.1, value: "passwordTextField", forKey: animationKey), forKey: animationKey)
        
    }
    
   func  setLoginButton(){
    loginButton.setTitle("Login", for: .normal)
    loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    loginButton.layer.add(addAnimationInterface(time: 1.3, value: "loginButton", forKey: animationKey), forKey: animationKey)
    
    
    }
    
    func setOneboardButton(){
        oneboardButton.layer.borderColor = UIColor.clear.cgColor
        oneboardButton.setImage(UIImage(named: "Register"), for: .normal)
        oneboardButton.addTarget(self, action: #selector(buttonActionRegist), for: .touchUpInside)
        oneboardButton.imageView?.contentMode = .scaleAspectFit
        oneboardButton.layer.add(addAnimationInterface(time: 1.5, value: "oneboardButton", forKey: animationKey), forKey: animationKey)
    }
    
    @objc func buttonAction(sender: UIButton!){
        nameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        loginButton.layer.add(animateButtonClick(value: "click", forKey: animationKey), forKey: "pop")
    }
    
    @objc func buttonActionRegist(sender: UIButton!){
        oneboardButton.layer.add(rotateDegrees(duration: 0.32, value: "transform.rotation", forKey: animationKey),forKey: animationKey)
        
    }
    
}
