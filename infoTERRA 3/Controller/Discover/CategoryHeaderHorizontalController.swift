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
    
    var systemFullScreenController: SystemFullScreenController!

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        collectionView.backgroundColor = .white
        collectionView.register(CategoryHeaderCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)

    }
    
    //MARK: - Actions
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let systemItem = items[indexPath.row]
        
        
        let controller = SystemFullScreenController(systemItem: items[indexPath.row])
        controller.modalPresentationStyle = .fullScreen
        present(UINavigationController(rootViewController: controller), animated: true)
        
//        let controller = SystemController()
//        controller.systemItem = items[indexPath.row]
//        present(UINavigationController(rootViewController: controller), animated: true)

    }
    

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
}

