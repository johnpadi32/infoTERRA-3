//
//  HomeFullscreenHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/1/25.
//

import UIKit

class HomeFullscreenHeader: UITableViewCell {
    
    //MARK: - Properties
    let homeCell = HomeCell()
    
//    let newimageView = UIImageView(cornerRadius: 20)

    
    let closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "close_button"), for: .normal)
        button.tintColor = .DdoTERRABackgroundColor
        return button
    }()
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(homeCell)
        homeCell.fillSuperview()
        
        contentView.addSubview(closeButton)
        closeButton.anchor(top: topAnchor, right: rightAnchor, paddingTop: 0, paddingRight: 16, width: 80, height: 38)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
