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
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        addSubview(categoryHeaderHorizontalController.view)
        categoryHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
