//
//  PromoOfferCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/11/25.
//

import UIKit

class PromoOfferCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray6
        
        layer.cornerRadius = 16
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Helpers
    
    //MARK: - Actions
}
