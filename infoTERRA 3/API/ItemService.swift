//
//  ItemService.swift
//  infoTERRA 3
//
//  Created by John Padilla on 11/6/25.
//

import FirebaseCore

struct ItemService {
    
    ///  Save items func
    static func saveItemToFirestore(_ items: Items) {
        FirebaseReference(.Items).document(items.id).setData(itemDictionaryFrom(items) as! [String:Any])
    }
    
    /// Helper functions
    static func itemDictionaryFrom(_ items: Items) -> NSDictionary {
        return NSDictionary(objects: [items.id, items.categoryId, items.name, items.categoryId, items.retailPrice, items.wholesalePrice, items.imageLink, items.itemId, items.size], forKeys: [KOBJECTID as NSCopying, KCATEGORYID as NSCopying, KNAME as NSCopying, KCATEGORYID as NSCopying, KRETAILPRICE as NSCopying, KWHOLESALEPRICE as NSCopying, KIMAGELINKS as NSCopying, KITEMID as NSCopying, KSIZE as NSCopying])
    }
}
