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
        SystemItem.init(title: "Respiratory", image: .system, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Reproductive", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Nervous", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Musculoskeletal", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Integumentary", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Immune", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Endocrine", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Digestive", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>),
        SystemItem.init(title: "Circulatory", image: <#T##UIImage#>, description: <#T##String#>, logoImage: <#T##UIImage#>)
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
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CategoryHeaderCell
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
