//
//  DetialsController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/11/25.
//

import UIKit

class DetialsController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    
    let detailCellId = "detailCellId"
    let moreAboutProductCellId = "moreAboutProductCellId"
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
        collectionView.register(DetialCell.self, forCellWithReuseIdentifier: detailCellId)
        collectionView.register(MoreAboutProductCell.self, forCellWithReuseIdentifier: moreAboutProductCellId)
        navigationItem.largeTitleDisplayMode = .never
        
        sharedButton(selector: #selector(sharedButtonPress))
    }
    
    //MARK: - Actions
    
    @objc func sharedButtonPress() {
        print("Share product")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: detailCellId, for: indexPath)as! DetialCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: moreAboutProductCellId, for: indexPath) as! MoreAboutProductCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            let dummyCell = DetialCell(frame: .init(x: 0, y: 0, width: view.frame.width, height: 1000))
            
            dummyCell.layoutIfNeeded()
            
            let estimatedSize = dummyCell.systemLayoutSizeFitting(.init(width: view.frame.width, height: 1000))
            
            return .init(width: view.frame.width, height: estimatedSize.height)
        } else {
            return .init(width: view.frame.width, height: 350)
        }
    }
}
