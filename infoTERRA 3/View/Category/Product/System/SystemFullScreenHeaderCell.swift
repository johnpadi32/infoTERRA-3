//
//  SystemFullScreenHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/19/25.
//

import UIKit

class SystemFullScreenHeaderCell: UITableViewCell {
    
    //MARK: - Properties

    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 22, weight: .bold))
    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18))
    let imageViews = UIImageView(cornerRadius: 8)
    let subDescriptionLabel = UILabel(text: "The respiratory system—lungs, airways, and trachea—delivers oxygen to your cells with every breath. Peppermint oil has long supported healthy breathing.", font: .systemFont(ofSize: 18))
    
    let productLabel = UILabel(text: "TOP PRODUCTS", font: .systemFont(ofSize: 22, weight: .bold))

    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
                
        titleLabel.textColor = UIColor.doTERRABlueTextColor
        descriptionLabel.numberOfLines = 0
        subDescriptionLabel.numberOfLines = 0
        
        imageViews.image = .respiratory
        imageViews.contentMode = .scaleAspectFill
        imageViews.setHeight(150)
        
        let stackView = UIStackView(arrangedSubviews: [descriptionLabel, imageViews, subDescriptionLabel, productLabel])
        stackView.axis = .vertical
        stackView.spacing = 18
        
        addSubview(stackView)
        stackView.anchor(top: safeAreaLayoutGuide.topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 20, paddingLeft: 24, paddingBottom: 22, paddingRight: 24)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    //MARK: - Actions
}
