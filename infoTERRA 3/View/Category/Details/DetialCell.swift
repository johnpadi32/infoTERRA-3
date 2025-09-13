//
//  OilDetialController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/11/25.
//

import UIKit

class DetialCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let oilImageView = UIImageView(cornerRadius: 16)
    
    let nameLabel = UILabel(text: "Earborvitae Essential Oil", font: .boldSystemFont(ofSize: 24), numberOfLines: 2)
    
    let itemNumber = UILabel(text: "Item: 12345678", font: .systemFont(ofSize: 14))
    
    let retialPrice = UILabel(text: "Retail: $32.00", font: .systemFont(ofSize: 16, weight: .heavy))
    
    let wholesalePrice = UILabel(text: "Wholesale: $24.00", font: .systemFont(ofSize: 20))
    
    let sizeLabel = UILabel(text: "Size: 5 mL", font: .systemFont(ofSize: 16))
    
    let favoriteButton = UIButton(title: "Add Favorite")
    
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
        
        oilImageView.image = .onGuard
        oilImageView.backgroundColor = .white
        oilImageView.setDimensions(height: 200, width: 140)
        
        favoriteButton.backgroundColor = UIColor.deepLavanderColor
        favoriteButton.setDimensions(height: 34, width: 80)
        favoriteButton.layer.cornerRadius = 32 / 2
        favoriteButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        favoriteButton.setTitleColor(.white, for: .normal)
        
        let nameStackView = UIStackView(arrangedSubviews: [nameLabel, itemNumber])
        nameStackView.spacing = 1
        nameStackView.axis = .vertical
        
        let priceStackView = UIStackView(arrangedSubviews: [retialPrice, wholesalePrice, UIView()])
        priceStackView.axis = .vertical
        
        let bottomStackView = UIStackView(arrangedSubviews: [nameStackView, priceStackView, favoriteButton])
        bottomStackView.spacing = 12
        bottomStackView.axis = .vertical
        
        let topStackView = UIStackView(arrangedSubviews: [oilImageView, bottomStackView], customeSpacing: 20)
        
        let verticalStackView = UIStackView(arrangedSubviews: [topStackView, sizeLabel, UIView()])
        verticalStackView.spacing = 16
        verticalStackView.axis = .vertical
        
        addSubview(verticalStackView)
        verticalStackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20 )
        
        
    }
    
    //MARK: - Actions
    
    
}
