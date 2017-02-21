//
//  LoginRegisterVC.swift
//  Ongair
//
//  Created by MAC USER on 06/02/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import Foundation
import UIKit

class LoginRegisterVC : UIViewController {
    
    var emailView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 4
        return view
    }()
    
    var emailTextField : UITextField = {
        
        let imageView = UIImageView ()
        let msgImage = #imageLiteral(resourceName: "msg")
        imageView.image = msgImage
        imageView.contentMode = .scaleAspectFill
        imageView.frame = CGRect(x: 10, y: 10, width: 13, height: 12)
        
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.keyboardType = .emailAddress
        textField.rightViewMode = .always
        textField.rightView = imageView
        
        textField.addSubview(imageView)
        
        return textField
    }()
    
    var passwordView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 4
        return view
    }()
    
    var passwordTextField : UITextField = {
        let imageView = UIImageView ()
        let image = #imageLiteral(resourceName: "password")
        imageView.image = image
        imageView.frame = CGRect(x: 10, y: 10, width: 15, height: 15)
        
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        
        textField.rightView = imageView
        textField.rightViewMode = .always
        textField.addSubview(imageView)
        
        return textField
    }()
    
    var logInButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        var buttonLabel = UILabel()
        buttonLabel.text = "Login"
        button.titleLabel!.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitle(buttonLabel.text, for: .normal)
        //button.backgroundColor = hexStringToUIColor(hex: "ef4663")
        button.backgroundColor = UIColor(red: 239/255, green: 70/255, blue: 99/255, alpha: 1)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(handleLogin), for: .touchDown)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        emailViewConstrainsts()
        assignBackground()
        buttonConstraints()
        
        // dismiss Keyboard
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    func assignBackground() {
        let backgroundImage = UIImage(named: "Log in")
        var imageView: UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = backgroundImage
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    func handleLogin() {
        dismiss(animated: true) { 
            print("Logged In")
        }
    }
    
    func emailViewConstrainsts () {
        // x,y, width and height constraints
        
        view.addSubview(emailView)
        view.addSubview(passwordView)
        
        
        emailView.addSubview(emailTextField)
        passwordView.addSubview(passwordTextField)
        emailView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailView.topAnchor.constraint(equalTo: view.topAnchor, constant: 115).isActive = true
        emailView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -75).isActive = true
        emailView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: emailView.leftAnchor, constant: 7).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: emailView.widthAnchor, constant: -12).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: emailView.heightAnchor).isActive = true
        
        
        
        passwordView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 15).isActive = true
        passwordView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -75).isActive = true
        passwordView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: passwordView.leftAnchor, constant: 7).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: passwordView.widthAnchor, constant: -12).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: passwordView.heightAnchor).isActive = true

    }
    
    func buttonConstraints() {
        view.addSubview(logInButton)
        logInButton.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 15).isActive = true
        logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logInButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -75).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
        
}


