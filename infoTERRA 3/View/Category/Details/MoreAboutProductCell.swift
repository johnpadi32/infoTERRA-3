//
//  MoreAboutProductCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/16/25.
//

import UIKit

class MoreAboutProductCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let moreAboutLabel = UILabel(text: "More on Arborvitae Essential oil", font: .boldSystemFont(ofSize: 20))
    
    let horizontalController = MoreAboutScreenController()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        moreAboutLabel.textAlignment = .center
        
        addSubview(moreAboutLabel)
        addSubview(horizontalController.view)
        
        
        moreAboutLabel.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 20, paddingRight: 20)
        
        horizontalController.view.anchor(top: moreAboutLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
