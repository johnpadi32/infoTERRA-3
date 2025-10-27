//
//  CategoryPageHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryPageHeader: UICollectionReusableView {
    
    //MARK: - Properties
    
    let categoryHeaderHorizontalController = HomeHeaderHorizontalController()
    
    let imageView = UIImageView(cornerRadius: 16)
    
    let arrowButton = UIButton(title: "SHOP NOW")

    let titleLabel = UILabel(text: "Category", font: .systemFont(ofSize: 20, weight: .bold))
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray6
        
        imageView.image = .october2025
        imageView.contentMode = .scaleAspectFill
        imageView.setHeight(190)
        
        arrowButton.backgroundColor = .white
        arrowButton.tintColor = .black
        arrowButton.setDimensions(height: 35, width: 115)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        arrowButton.layer.cornerRadius = 35/2
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)
        
        addSubview(arrowButton)
        arrowButton.anchor(bottom: imageView.bottomAnchor, right: rightAnchor, paddingBottom: 16, paddingRight: 26)
        
        addSubview(categoryHeaderHorizontalController.view)
        
        categoryHeaderHorizontalController.view.anchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 22, paddingLeft: 0, paddingBottom: 50, paddingRight: 0)
        
        addSubview(titleLabel)
        titleLabel.anchor(left: leftAnchor, bottom: bottomAnchor, paddingLeft: 16, paddingBottom: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
