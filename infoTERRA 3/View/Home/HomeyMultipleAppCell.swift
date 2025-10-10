//
//  HomeyMultipleAppCell.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/7/25.
//

import UIKit

class HomeyMultipleAppCell: BaseHomeCell {
    
    //MARK: - Properties
    
    override var homeItem: HomeItem! {
        didSet {
            titleLabel.text = homeItem.title
            descriptionLabel.text = homeItem.Description
            
            multipleAppController.collectionView.reloadData()
        }
    }
    
    let titleLabel = UILabel(text: "Respiratory", font: .systemFont(ofSize: 26, weight: .bold), numberOfLines: 2)
    
    let descriptionLabel = UILabel(text: "The respiratory system supplies oxygen; peppermint supports breathing", font: .systemFont(ofSize: 18, weight: .medium), numberOfLines: 3)
    
    let multipleAppController = HomeMultipleAppController(mode: .small)
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16

        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, multipleAppController.view])
        stackView.axis = .vertical
        stackView.spacing = 12
        
        addSubview(stackView)
        stackView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 24, paddingLeft: 24, paddingBottom: 24, paddingRight: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    
}
