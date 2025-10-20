//
//  SystemFullScreenHeader.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/19/25.
//

import UIKit

class SystemFullScreenHeader: UITableViewCell {
    
    //MARK: - Properties
    
    let systemCell = SystemCell()
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    //MARK: - Actions
}
