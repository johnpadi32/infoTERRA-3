//
//  HomeFullscreenHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/1/25.
//

import UIKit

class HomeFullscreenHeader: UITableViewCell {
    
    //MARK: - Properties
    let homeCell = HomeCell()
    
    
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(homeCell)
        homeCell.fillSuperview()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
