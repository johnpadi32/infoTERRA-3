//
//  CategoryService.swift
//  infoTERRA 3
//
//  Created by John Padilla on 11/3/25.
//

import FirebaseCore

struct CategoryService {
    static func saveCategoryFirebase(_ category: Category) {
        let id = UUID().uuidString
        category.id = id
        
        FirebaseReference(.Category).document(id).setData(categoryDictionaryFrom(category) as! [String : Any])
    }
    
    /// Helpers
    static func categoryDictionaryFrom(_ category: Category) -> NSDictionary {
        return NSDictionary(objects: [category.id, category.name, category.imageName], forKeys: [KOBJECTID as NSCopying, KNAME as NSCopying, KIMAGENAME as NSCopying])
    }
    
    /// Use only one time
//    static func createCategorySet() {
//        let essentialOils = Category(_name: "Essential Oils", _imageName: "oilLemon")
//        let oilBlends = Category(_name: "Essential Oil Blends", _imageName: "citrusBliss")
//        let onGuardProducts = Category(_name: "On Guard Products", _imageName: "OnGuard")
//        let breatheProducts = Category(_name: "Breather Products", _imageName: "breathe")
//        let deepBlueProducts = Category(_name: "Deep Blue Products", _imageName: "deepBlue")
//        let digestZenProdcuts = Category(_name: "DigestZen Products", _imageName: "digestZen")
//        let AdaptivProducts = Category(_name: "Adaptv", _imageName: "adaptive")
//        let popularOils = Category(_name: "Most Popular", _imageName: "popular")
//        let sleepProducts = Category(_name: "Sleep Products", _imageName: "sleep")
//        
//        
//        let arrayOfCategories = [essentialOils, oilBlends, onGuardProducts, breatheProducts, deepBlueProducts, digestZenProdcuts, AdaptivProducts, popularOils, sleepProducts]
//        
//        for category in arrayOfCategories {
//            saveCategoryFirebase(category)
//        }
//    }
}
