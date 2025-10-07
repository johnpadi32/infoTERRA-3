//
//  CategoryHeaderHorizontalController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryHeaderHorizontalController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    
    let reuseIdentifier = "cellId"
    
    let items = [
        SystemItem.init(title: "RESPIRATORY SYSTEM", image: .system, description: "The respiratory system supplies oxygen; peppermint supports breathing"),
        SystemItem.init(title: "REPRODUCTIVE SYSTEM", image: .reproductive, description: "Stress, toxins, and lifestyle can disrupt reproductive health. Essential oils support hormones, mood, and intimacy."),
        SystemItem.init(title: "NERVOUS SYSTEM", image: .nervous, description: "The nervous system controls thoughts, emotions, and movement. Essential oils help calm and balance it."),
        SystemItem.init(title: "MUSCULOSKELETAL SYSTEM", image: .musculoskeletal, description: "Muscles, bones, and joints power movement. Essential oils and supplements support strength and soothe discomfort."),
        SystemItem.init(title: "INTEGUMENTARY SYSTEM", image: .integumentary, description: "kin, hair, and nails shield your body. Essential oils and natural care products keep them healthy and radiant."),
        SystemItem.init(title: "IMMUNE SYSTEM", image: .immune, description: "Your immune system defends against threats. Essential oils and supplements help keep it strong and resilient."),
        SystemItem.init(title: "ENDOCRINE SYSTEM", image: .endocrine, description: "Hormones shape mood, hunger, and sleep. Essential oils like Clary Sage and Fennel support endocrine balance."),
        SystemItem.init(title: "DIGESTIVE SYSTEM", image: .digestive, description: "Digestion fuels your body with nutrients and energy. Essential oils and supplements support comfort and gut health."),
        SystemItem.init(title: "CIRCULATORY SYSTEM", image: .circulatory, description: "The heart and vessels move oxygen and remove waste. A healthy heart supports strong circulation.")
    ]
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        collectionView.backgroundColor = .systemGray6
        collectionView.register(CategoryHeaderCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)

    }
    
    //MARK: - Actions
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CategoryHeaderCell
        cell.systemItem = items[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 48, height: view.frame.height)
    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return .init(top: 0, left: 16, bottom: 0, right: 16)
//    }

}

