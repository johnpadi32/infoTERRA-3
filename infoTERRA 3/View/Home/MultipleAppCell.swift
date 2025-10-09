//
//  MultipleAppCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/8/25.
//

import UIKit

class MultipleAppCell: UICollectionViewCell {
     
    //MARK: - Properties
    
    let nameLabel = UILabel(text: "90-Day Reset Cleanse - Month 2", font: .boldSystemFont(ofSize: 14), numberOfLines: 2)
    
    let productImage: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "90dayresetmonth")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let arrowButton = UIButton(title: "SHOP")
    
    let separatorView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(white: 0.3, alpha: 0.3)
        return view
    }()
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        productImage.image = .onGuard
        productImage.backgroundColor = .white
        productImage.setDimensions(height: 80, width: 80)
        
        nameLabel.textColor = UIColor.doTERRABlueTextColor
        nameLabel.numberOfLines = 2
        
        arrowButton.backgroundColor = UIColor.lavanderColor
        arrowButton.tintColor = .white
        arrowButton.setDimensions(height: 32, width: 65)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        arrowButton.layer.cornerRadius = 32/2
        
        let stackView = UIStackView(arrangedSubviews: [productImage,nameLabel, arrowButton])
        stackView.spacing = 8
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.fillSuperview()
        
        addSubview(separatorView)
        separatorView.anchor(top: nil, leading: nameLabel.leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: -8, right: 0), size: .init(width: 0, height: 0.5))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
