//
//  UserCell.swift
//  Ongair
//
//  Created by MAC USER on 15/02/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import UIKit

class UserCell : UITableViewCell {
    
    func setupCell() {
        self.textLabel?.text = "Lily"
        self.detailTextLabel?.text = "Ongair is the besteee"
        self.backgroundColor = .blue
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        textLabel?.frame = CGRect(x: 64, y: textLabel!.frame.origin.y - 2, width: textLabel!.frame.width, height: textLabel!.frame.height)
        detailTextLabel?.frame = CGRect(x: 64, y: detailTextLabel!.frame.origin.y + 2, width: detailTextLabel!.frame.width, height: detailTextLabel!.frame.height)
    }
    
    let timeLabel : UILabel = {
        let label = UILabel()
        label.text = "4hrs ago"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        return label
    }()
    
    let instaIcon : UIImageView = {
        let view = UIImageView()
        let image = #imageLiteral(resourceName: "instagram")
        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let instaGramNotificationLabel : UILabel = {
        let label = UILabel()
        label.text = String(12)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let detailContainerView : UIView  = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        
    
        
        guard let labelText = textLabel else {
            return
        }
//        addSubview(detailContainerView)
//        addSubview(timeLabel)
//        addSubview(instaIcon)
//        addSubview(instaGramNotificationLabel)
  
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


