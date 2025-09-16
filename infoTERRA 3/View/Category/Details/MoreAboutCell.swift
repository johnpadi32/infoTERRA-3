//
//  MoreAboutCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/16/25.
//

import UIKit

class MoreAboutCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let imageView = UIImageView(cornerRadius: 12)
    
    let titleLabel = UILabel(text: "Arborvitae Oil Uses and Benefits", font: .boldSystemFont(ofSize: 16), numberOfLines: 2)
    let previewLabel = UILabel(text: "Arborvitae is a majestic evergreen that’s valued for its grounding and cleansing aromatic and topical benefits. Find out how it can improve your home.", font: .systemFont(ofSize: 15), numberOfLines: 0)
    let readMoreButtom = UIButton(title: "Read about Arborvitae")
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray6
        layer.cornerRadius = 12
        clipsToBounds = true
        
        titleLabel.textAlignment = .center
        previewLabel.textAlignment = .center
        
        imageView.backgroundColor = .orange
        imageView.setDimensions(height: 40, width: 40)
        
        let stackView = UIStackView(arrangedSubviews: [imageView, titleLabel, previewLabel, readMoreButtom, UIView()])
        stackView.spacing = 12
        stackView.alignment = .center
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
