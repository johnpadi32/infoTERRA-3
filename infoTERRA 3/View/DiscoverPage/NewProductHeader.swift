//
//  NewProductHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/28/25.
//

import UIKit

class NewProductHeader: UICollectionReusableView {

    
    let titleLabel = UILabel(text: "New Products Are Here", font: .systemFont(ofSize: 30, weight: .bold), numberOfLines: 2)
    
    let descriptionLabel = UILabel(text: "Shop Products", font: .systemFont(ofSize: 18, weight: .medium), numberOfLines: 3)
    
    let multipleAppController = DiscoverMultipleController(mode: .small)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel.textAlignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 1, paddingLeft: 24, paddingBottom: 24, paddingRight: 24)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
