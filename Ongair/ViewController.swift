//
//  ViewController.swift
//  Ongair
//
//  Created by MAC USER on 06/02/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cellId = "cellID"
    var tableView : UITableView = UITableView()
    var purpleFontColor : UIColor?
    let workMates : [String] = ["Lily", "Eunice", "Mboya"]
    var latoRegularFont =  UIFont(name: "Lato-Regular", size: 16)
    
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
    
    let timeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "HH:MM:SS"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        
        purpleFontColor = hexStringToUIColor(hex: "#733389")
        
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        
        let screenSize = UIScreen.main.bounds
        
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        tableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        
        self.view.addSubview(tableView)
        

    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
       
            
        cell = UITableViewCell(style: .subtitle, reuseIdentifier:cellId)
        cell?.detailTextLabel?.text = "Ongair Is the best"
        cell?.textLabel?.text = "Lily"
        cell?.textLabel?.textColor = purpleFontColor
        cell?.textLabel?.font = UIFont(name: "Lato-Regular", size: 144)
        cell?.detailTextLabel?.font = UIFont(name: "Lato-Thin", size: 10)

        cell?.addSubview(timeLabel)
        guard let labelText = cell?.textLabel else {
            return cell!
            
        }
        
        timeLabel.rightAnchor.constraint(equalTo: (cell?.rightAnchor)!).isActive = true
        timeLabel.topAnchor.constraint(equalTo: (cell?.topAnchor)!, constant: 18).isActive = true
        timeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        timeLabel.heightAnchor.constraint(equalTo: labelText.heightAnchor).isActive = true
        return cell!
    }
    
    func configureCell(_ cell: UITableViewCell) {
        // cell configurations go here
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
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
    
    func hexStringToUIColor (hex: String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    

}

