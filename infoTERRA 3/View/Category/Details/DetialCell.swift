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
    
    let nameLabel = UILabel(text: "Arborvitae Essential Oil", font: .boldSystemFont(ofSize: 22), numberOfLines: 2)
    
    let itemNumber = UILabel(text: "12345678", font: .systemFont(ofSize: 16))
    
    let retialPrice = UILabel(text: "Retail: $32.00", font: .boldSystemFont(ofSize: 16))
    
    let wholesalePrice = UILabel(text: "Wholesale: $24.00", font: .systemFont(ofSize: 18))
    
    let sizeLabel = UILabel(text: "Size: 5 mL", font: .systemFont(ofSize: 18))
    
    let favoriteButton = UIButton(title: "Add Favorite")
    
    let relesdeInfoLabel = UILabel(text: "Arborvitae essential oil comes from the majestic arborvitae tree—also known as the western redcedar, Thuja plicata, and the tree of life that is native to Canada and the Northwestern US. Arborvitae essential oil captures the tree’s distinct, methyl thujate–rich chemical profile, providing a warm and earthy aroma that’s ideal for meditation. It’s also an effective cleaner for both the skin and household surfaces. doTERRA responsibly sources Arborvitae essential oil by distilling discarded wood to ensure no trees are unnecessarily harvested for production", font: .systemFont(ofSize: 18), numberOfLines: 0)
    
    
    let useLabel1 = UILabel(text: "A", font: .boldSystemFont(ofSize: 20))
    let useLabel2 = UILabel(text: "T", font: .boldSystemFont(ofSize: 20))
    let useLabel3 = UILabel(text: "N", font: .boldSystemFont(ofSize: 20))
    
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
        oilImageView.setDimensions(height: 250, width: 140)
        
        favoriteButton.backgroundColor = UIColor.deepLavanderColor
        favoriteButton.setDimensions(height: 34, width: 80)
        favoriteButton.layer.cornerRadius = 32 / 2
        favoriteButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        favoriteButton.setTitleColor(.white, for: .normal)
        
        useLabel1.backgroundColor = .gray
        useLabel1.setDimensions(height: 40, width: 40)
        useLabel1.layer.cornerRadius = 40 / 2
        useLabel1.clipsToBounds = true
        useLabel1.textColor = .white
        useLabel1.textAlignment = .center
        
        useLabel2.backgroundColor = .orange
        useLabel2.setDimensions(height: 40, width: 40)
        useLabel2.layer.cornerRadius = 40 / 2
        useLabel2.clipsToBounds = true
        useLabel2.textColor = .white
        useLabel2.textAlignment = .center
        
        useLabel3.backgroundColor = .blue
        useLabel3.setDimensions(height: 40, width: 40)
        useLabel3.layer.cornerRadius = 40 / 2
        useLabel3.clipsToBounds = true
        useLabel3.textColor = .white
        useLabel3.textAlignment = .center
        

        
        let useStackView = UIStackView(arrangedSubviews: [useLabel1, useLabel2, useLabel3, UIView()])
        useStackView.spacing = 10
        
        let nameStackView = UIStackView(arrangedSubviews: [nameLabel, itemNumber])
        nameStackView.spacing = 5
        nameStackView.axis = .vertical
        
        let priceStackView = UIStackView(arrangedSubviews: [retialPrice, wholesalePrice, UIView()])
        priceStackView.spacing = 5
        priceStackView.axis = .vertical
        
        let bottomStackView = UIStackView(arrangedSubviews: [nameStackView, priceStackView, favoriteButton])
        bottomStackView.spacing = 16
        bottomStackView.axis = .vertical
        
        let topStackView = UIStackView(arrangedSubviews: [oilImageView, bottomStackView], customeSpacing: 20)
        
        let verticalStackView = UIStackView(arrangedSubviews: [topStackView, sizeLabel, useStackView, relesdeInfoLabel])
        verticalStackView.spacing = 20
        verticalStackView.axis = .vertical
        
        addSubview(verticalStackView)
        verticalStackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20 )
        
        
    }
    
    //MARK: - Actions
    
    
}
