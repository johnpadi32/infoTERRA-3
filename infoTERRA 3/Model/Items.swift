//
//  Items.swift
//  infoTERRA 3
//
//  Created by John Padilla on 11/5/25.
//

import UIKit

class Items {
    var id: String!
    var categoryId: String!
    var itemId: String!
    var name: String!
    var imageLink: String!
    var retailPrice: Double!
    var wholesalePrice: Double!
    var size: String!
    var description: String!

    init(){
    }
    
    init(_dictionary: NSDictionary){
        
        id = _dictionary[KOBJECTID] as? String
        categoryId = _dictionary[KCATEGORYID] as? String
        itemId = _dictionary[KITEMID] as? String
        name = _dictionary[KNAME] as? String
        imageLink = _dictionary[KIMAGELINKS] as? String
        retailPrice = _dictionary[KRETAILPRICE] as? Double
        wholesalePrice = _dictionary[KWHOLESALEPRICE] as? Double
        size = _dictionary[KSIZE] as? String
        description = _dictionary[KDESCRIPTION] as? String
    }
}
