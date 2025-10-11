//
//  PromoOfferCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/10/25.
//

import UIKit

class HomePromoOfferCell: BaseHomeCell {
    
    override var homeItem: HomeItem! {
        didSet {
            titleLabel.text = homeItem.title
            descriptionLabel.text = homeItem.Description
        }
    }
    
    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 30, weight: .bold), numberOfLines: 2)
    
    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18, weight: .semibold), numberOfLines: 3)
    
    let promoOfferController = PromosOfferController()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)


        backgroundColor = .white
        
        layer.cornerRadius = 16
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, promoOfferController.view])
        stackView.axis = .vertical
        stackView.spacing = 12
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 24, paddingLeft: 24, paddingBottom: 24, paddingRight: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
