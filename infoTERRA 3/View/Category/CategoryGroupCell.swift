//
//  CategoryGroupCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//
import UIKit

class CategoryGroupCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let categoryLabel = UILabel(text: "Essential Oils blends", font: .boldSystemFont(ofSize: 24))
    
    let companyLabel = UILabel(text: "Company name", font: .systemFont(ofSize: 13))
    
    let categoryImage: UIImageView = {
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
        
        backgroundColor = .white
        
        categoryImage.image = .onGuard
        categoryImage.backgroundColor = .white
        categoryImage.setDimensions(height: 125, width: 110)
        
        categoryLabel.textColor = UIColor.doTERRABlueTextColor
        categoryLabel.numberOfLines = 2
        
        arrowButton.backgroundColor = UIColor.lavanderColor
        arrowButton.tintColor = .white
        arrowButton.setDimensions(height: 32, width: 80)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        arrowButton.layer.cornerRadius = 32/2

        
        let stackView = UIStackView(arrangedSubviews: [categoryImage, categoryLabel, arrowButton])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 12)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}

