//
//  CategoryGroupCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//
import UIKit

class HomeCategoryCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    func generateCell(_ category: Category) {
        categoryLabel.text = category.name
        categoryImage.image = category.image
    }
    
    let categoryLabel = UILabel(text: "Essential Oils blends", font: .boldSystemFont(ofSize: 20))

    
//    let companyLabel = UILabel(text: "Company name", font: .systemFont(ofSize: 13))
    
    let categoryImage: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "onguard")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    

    
    let separatorView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(white: 0.3, alpha: 0.3)
        return view
    }()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 8
        
        categoryImage.image = .onGuard
//        categoryImage.backgroundColor = .red
//        categoryImage.setDimensions(height: 100, width: 100)
        
        categoryLabel.textColor = UIColor.doTERRABlueTextColor
        categoryLabel.numberOfLines = 2
        categoryLabel.textAlignment = .center
        


        
        
        addSubview(categoryImage)
        categoryImage.centerX(inView:self)
        categoryImage.setDimensions(height: 165, width: 150)
        categoryImage.anchor(top: topAnchor, paddingTop: 10)
        
        addSubview(categoryLabel)
        categoryLabel.anchor(top: categoryImage.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 1, paddingLeft: 10, paddingBottom: 10, paddingRight: 10)
        
//        let stackView = UIStackView(arrangedSubviews: [categoryImage, categoryLabel, arrowButton])
//        stackView.spacing = 16
//        stackView.alignment = .center
//        
//        addSubview(stackView)
//        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 12)
//        
//        addSubview(separatorView)
//        separatorView.anchor(top: nil, leading: categoryLabel.leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: -8, right: 0), size: .init(width: 0, height: 0.8))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}

