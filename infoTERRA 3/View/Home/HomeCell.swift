//
//  HomeCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/24/25.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    var homeItem: HomeItem! {
        didSet {
            titleLabel.text = homeItem.title
            descriptionLabel.text = homeItem.Description
            imageView.image = homeItem.image
            
        }
    }
    
    var topConstraint: NSLayoutConstraint!
    
    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 26, weight: .bold), numberOfLines: 2)
    
    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 16), numberOfLines: 3)
    
    let imageView = UIImageView(cornerRadius: 0)

    
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
        layer.cornerRadius = 16
        clipsToBounds = true

        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        
        imageView.image = UIImage(named: "SystemImage")
        imageView.contentMode = .scaleAspectFill
 
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 450, height: 120))
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, imageContainerView, descriptionLabel
            ])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        addSubview(stackView)
        stackView.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft: 24, paddingBottom: 18, paddingRight: 24)
        self.topConstraint = stackView.topAnchor.constraint(equalTo: topAnchor, constant: 18)
        self.topConstraint.isActive = true

   
    }
}
