//
//  CategoryHeaderCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryHeaderCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let systemLabel = UILabel(text: "Respiratory", font: .boldSystemFont(ofSize: 16))
    
    let titleLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18))

    let imageView = UIImageView(cornerRadius: 8)
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
                
        systemLabel.textColor = .blue
        titleLabel.numberOfLines = 2
        
        imageView.image = .system
        
        let stackView = UIStackView(arrangedSubviews: [systemLabel, titleLabel, imageView])
        stackView.axis = .vertical
        stackView.spacing = 12
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}
