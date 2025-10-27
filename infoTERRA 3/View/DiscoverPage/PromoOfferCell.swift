//
//  PromoOfferCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/11/25.
//

import UIKit

class PromoOfferCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    let upToLabel = UILabel(text: "Up to", font: .systemFont(ofSize: 10, weight: .regular))
    let titleLabel = UILabel(text: "25% OF", font: .systemFont(ofSize: 16, weight: .heavy))
    let productLabel = UILabel(text: "doTERRA SERENTIY.", font: .systemFont(ofSize: 10))
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "BreatheProducts"))
    
    let arrowButton = UIButton(title: "View More")
        
    var topConstraint: NSLayoutConstraint!
    
    //MARK: - Lifecycle
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray6
        
        layer.cornerRadius = 16
        clipsToBounds = true
        
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        
        imageView.image = UIImage(named: "PromoSerenity")
        imageView.contentMode = .scaleAspectFit
        imageView.setDimensions(height: 70, width: 70)
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
 
        arrowButton.backgroundColor = UIColor.lavanderColor
        arrowButton.tintColor = .white
        arrowButton.setDimensions(height: 24, width: 22)
        arrowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        arrowButton.layer.cornerRadius = 24/2
        
        let pricesStackView = UIStackView(arrangedSubviews: [upToLabel, titleLabel, productLabel])
        pricesStackView.axis = .vertical
        
        let middleStackView = UIStackView(arrangedSubviews: [pricesStackView, arrowButton])
        middleStackView.spacing = 8
        middleStackView.axis = .vertical

        
//        let stackView = UIStackView(arrangedSubviews: [middleStackView, imageView])
//        stackView.spacing = 16
//        stackView.alignment = .center
//        
//        addSubview(stackView)
//        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 12)
        

        
        addSubview(middleStackView)
        middleStackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 16, paddingBottom: 10, paddingRight: 16)
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: arrowButton.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 100, paddingBottom: 10, paddingRight: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Helpers
    
    //MARK: - Actions
}
