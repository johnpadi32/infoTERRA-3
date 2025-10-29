//
//  CategoryHeaderHorizontalController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class HomeHeaderHorizontalController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
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
        
        collectionView.backgroundColor = .systemGray6
        collectionView.register(HomeHeaderCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.contentInset = .init(top: 0, left: 10, bottom: 0, right: -10)

    }
    
    //MARK: - Actions
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let controller = SystemFullScreenController(systemItem: items[indexPath.row])
        controller.modalPresentationStyle = .fullScreen
        present(UINavigationController(rootViewController: controller), animated: true)
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeHeaderCell
        cell.systemItem = items[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {


        let text = items[indexPath.item] // Your label text
            let font = UIFont.systemFont(ofSize: 22) // Match your label's font

        let size = (text.title as NSString).size(withAttributes: [.font: font])
            return CGSize(width: ceil(size.width) + 10, height: collectionView.frame.height)

    }
}

