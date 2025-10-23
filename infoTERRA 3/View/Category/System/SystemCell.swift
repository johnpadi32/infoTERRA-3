//
//  SystemCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/19/25.
//

import UIKit

class SystemCell: UITableViewCell {
    
    var topConstraint: NSLayoutConstraint!
    
    //MARK: - Properties
    
//    let nameLabel = UILabel(text: "Arborvitae essential oil", font: .boldSystemFont(ofSize: 22), numberOfLines: 2)
    let categoryLabel = UILabel(text: "Essential Oils blends", font: .boldSystemFont(ofSize: 18))
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
