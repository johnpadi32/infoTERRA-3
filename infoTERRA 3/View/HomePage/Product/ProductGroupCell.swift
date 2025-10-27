//
//  ProductGroupCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/11/25.
//


import UIKit

class ProductGroupCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let nameLabel = UILabel(text: "Arborvitae essential oil", font: .boldSystemFont(ofSize: 22), numberOfLines: 2)
    
    let retailPrice = UILabel(text: "$57.33", font: .systemFont(ofSize: 16, weight: .bold))
    let wholesalePrice = UILabel(text: "$43.00", font: .systemFont(ofSize: 16))

    
    let productImage: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "onguard")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let arrowButton = UIButton(title: "SHOP")
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        productImage.image = .onGuard
        productImage.backgroundColor = .white
        productImage.setDimensions(height: 125, width: 110)
        
        nameLabel.textColor = UIColor.doTERRABlueTextColor
        nameLabel.numberOfLines = 2
        
        arrowButton.backgroundColor = UIColor.lavanderColor
        arrowButton.tintColor = .white
        arrowButton.setDimensions(height: 32, width: 80)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        arrowButton.layer.cornerRadius = 32/2
        
        let pricesStackView = UIStackView(arrangedSubviews: [retailPrice, wholesalePrice])
        pricesStackView.axis = .vertical
        
        let middleStackView = UIStackView(arrangedSubviews: [nameLabel, pricesStackView])
        middleStackView.spacing = 10
        middleStackView.axis = .vertical

        
        let stackView = UIStackView(arrangedSubviews: [productImage,middleStackView, arrowButton])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 12)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
