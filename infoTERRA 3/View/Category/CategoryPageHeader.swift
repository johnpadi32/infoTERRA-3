//
//  CategoryPageHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryPageHeader: UICollectionReusableView {
    
    //MARK: - Properties
    
    let categoryHeaderHorizontalController = CategoryHeaderHorizontalController()
    
    let titleLabel = UILabel(text: "Category", font: .boldSystemFont(ofSize: 28))
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(categoryHeaderHorizontalController.view)
//        categoryHeaderHorizontalController.view.fillSuperview()
        
        categoryHeaderHorizontalController.view.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 60, paddingRight: 0)
        
        addSubview(titleLabel)
        titleLabel.anchor(left: leftAnchor, bottom: bottomAnchor, paddingLeft: 22, paddingBottom: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
