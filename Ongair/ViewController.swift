//
//  ViewController.swift
//  Ongair
//
//  Created by MAC USER on 06/02/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var navigationBarView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.gray
        return view
    }()

    var rightButtonNavView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var logoutButton : UIButton = {
        let button = UIButton()
        let buttonImage = UIImage(named: "Logout")
        button.setImage(buttonImage, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handlelogoutButton), for: .touchDown)
        return button
    }()
    
    var rightNavSeperator : UIView = {
       let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var contactsButtonView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var contactsButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "Contacts")
        button.setImage(buttonImage, for: .normal)
        return button
    }()
    
    var leftNavView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var leftNavImageIconView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var leftNavLabel : UILabel = {
       let label = UILabel()
        label.text = "Inbox"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    var inboxIcon : UIImageView = {
//        let image = UIImage(named: "inbox")
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
    
    var inboxButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "Inbox")
        button.setImage(image, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navBarIconSet()
        navigationController?.navigationBar.barTintColor = UIColor(red: 115/255, green: 51/255, blue: 137/255, alpha: 1)
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
 
    }
    
    func navBarIconSet() {
        if let navBar = navigationController?.navigationBar {
            navBar.addSubview(rightButtonNavView)
            navBar.addSubview(rightNavSeperator)
            navBar.addSubview(contactsButtonView)
            navBar.addSubview(leftNavView)
            //---
   
            rightButtonNavView.rightAnchor.constraint(equalTo: navBar.rightAnchor).isActive = true
            rightButtonNavView.topAnchor.constraint(equalTo: navBar.topAnchor).isActive = true
            rightButtonNavView.widthAnchor.constraint(equalToConstant: 50).isActive = true
            rightButtonNavView.heightAnchor.constraint(equalTo: navBar.heightAnchor).isActive = true
            
            rightButtonNavView.addSubview(logoutButton)
            
            logoutButton.centerXAnchor.constraint(equalTo: rightButtonNavView.centerXAnchor).isActive = true
            logoutButton.centerYAnchor.constraint(equalTo: rightButtonNavView.centerYAnchor).isActive = true
            logoutButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
            logoutButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
            
            rightNavSeperator.rightAnchor.constraint(equalTo: rightButtonNavView.leftAnchor).isActive = true
            rightNavSeperator.topAnchor.constraint(equalTo: navBar.topAnchor).isActive = true
            rightNavSeperator.widthAnchor.constraint(equalToConstant: 1).isActive = true
            rightNavSeperator.heightAnchor.constraint(equalTo: navBar.heightAnchor).isActive = true
            
            contactsButtonView.rightAnchor.constraint(equalTo: rightNavSeperator.leftAnchor).isActive = true
            contactsButtonView.topAnchor.constraint(equalTo: navBar.topAnchor).isActive = true
            contactsButtonView.widthAnchor.constraint(equalToConstant: 50).isActive = true
            contactsButtonView.heightAnchor.constraint(equalTo: navBar.heightAnchor).isActive = true
            
            contactsButtonView.addSubview(contactsButton)
            
            contactsButton.centerXAnchor.constraint(equalTo: contactsButtonView.centerXAnchor).isActive = true
            contactsButton.centerYAnchor.constraint(equalTo: contactsButtonView.centerYAnchor).isActive = true
            contactsButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
            contactsButton.heightAnchor.constraint(equalToConstant: 17).isActive = true
            
            leftNavView.leftAnchor.constraint(equalTo: navBar.leftAnchor).isActive = true
            leftNavView.topAnchor.constraint(equalTo: navBar.topAnchor).isActive = true
            leftNavView.widthAnchor.constraint(equalToConstant: 100).isActive = true
            leftNavView.heightAnchor.constraint(equalTo: navBar.heightAnchor).isActive = true
            
            leftNavView.addSubview(leftNavImageIconView)
            leftNavView.addSubview(leftNavLabel)
            
            leftNavImageIconView.leftAnchor.constraint(equalTo: leftNavView.leftAnchor, constant: 7).isActive = true
            leftNavImageIconView.centerYAnchor.constraint(equalTo: leftNavView.centerYAnchor).isActive = true
            leftNavImageIconView.widthAnchor.constraint(equalToConstant: 25).isActive = true
            leftNavImageIconView.heightAnchor.constraint(equalToConstant: 25).isActive = true

            leftNavLabel.leftAnchor.constraint(equalTo: leftNavImageIconView.rightAnchor, constant: 5).isActive = true
            leftNavLabel.centerYAnchor.constraint(equalTo: leftNavView.centerYAnchor).isActive = true
            leftNavLabel.widthAnchor.constraint(equalToConstant: 65).isActive = true
            leftNavLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
            
            leftNavImageIconView.addSubview(inboxButton)
            
            inboxButton.centerXAnchor.constraint(equalTo: leftNavImageIconView.centerXAnchor).isActive = true
            inboxButton.centerYAnchor.constraint(equalTo: leftNavImageIconView.centerYAnchor).isActive = true
            inboxButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
            inboxButton.heightAnchor.constraint(equalToConstant: 13.5).isActive = true
        }
        
    }
    
    func handlelogoutButton () {
        let vc = LoginRegisterVC()
        present(vc, animated: true) { 
            print("Logged Out")
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

