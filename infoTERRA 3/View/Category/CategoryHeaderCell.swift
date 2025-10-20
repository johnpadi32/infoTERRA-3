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
            descriptionLabel.text = systemItem.description
            imageView.image = systemItem.image
        }
    }
    
    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 22, weight: .black))
    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18))
    let imageView = UIImageView(cornerRadius: 8)
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
                
        titleLabel.textColor = UIColor.doTERRABlueTextColor
        descriptionLabel.numberOfLines = 0
        
        imageView.image = .system
//        imageView.backgroundColor = .red
        imageView.contentMode = .scaleAspectFill
//        imageView.setHeight(120)
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, imageView])
        stackView.axis = .vertical
        stackView.spacing = 12
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 8, paddingBottom: 0, paddingRight: 8)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}
