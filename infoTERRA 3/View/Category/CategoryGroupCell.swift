//
//  CategoryGroupCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//
import UIKit

class CategoryGroupCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let categoryLabel = UILabel(text: "Essential Oils blends", font: .boldSystemFont(ofSize: 22))
    
//    let companyLabel = UILabel(text: "Company name", font: .systemFont(ofSize: 13))
    
    let categoryImage: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "onguard")
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
        
        backgroundColor = .white
        
        categoryImage.image = .onGuard
        categoryImage.backgroundColor = .white
        categoryImage.setDimensions(height: 100, width: 100)
        
        categoryLabel.textColor = UIColor.doTERRABlueTextColor
        categoryLabel.numberOfLines = 2
        
        arrowButton.backgroundColor = UIColor.lavanderColor
        arrowButton.tintColor = .white
        arrowButton.setDimensions(height: 32, width: 80)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        arrowButton.layer.cornerRadius = 32/2

        
        let stackView = UIStackView(arrangedSubviews: [categoryImage, categoryLabel, arrowButton])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 12)
        
        addSubview(separatorView)
        separatorView.anchor(top: nil, leading: categoryLabel.leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: -8, right: 0), size: .init(width: 0, height: 0.8))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}

