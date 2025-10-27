//
//  CategoryHeaderCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryHeaderCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    var systemItem: SystemItem! {
        didSet {
            titleLabel.text = systemItem.title
//            descriptionLabel.text = systemItem.description
//            imageView.image = systemItem.image
        }
    }
    
    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 14, weight: .regular))
//    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18))
//    let imageView = UIImageView(cornerRadius: 8)
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray6
                
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        titleLabel.layer.borderWidth = 1.5
        titleLabel.layer.cornerRadius = 20
        titleLabel.clipsToBounds = true
        titleLabel.backgroundColor = .white

        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}
