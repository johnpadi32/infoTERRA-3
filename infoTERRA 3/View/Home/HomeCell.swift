//
//  HomeCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/24/25.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let imageView = UIImageView(cornerRadius: 16)
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        backgroundColor = .white
        
        layer.cornerRadius = 16
        
        imageView.image = .breatheProducts
        
        addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.fillSuperview()
    }
}
