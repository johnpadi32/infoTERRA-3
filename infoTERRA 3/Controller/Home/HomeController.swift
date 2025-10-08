//
//  HomeController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/24/25.
//

import UIKit

class HomeController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    
//    let cellId = "cellId"
//    let multipleAppCellId = "multipleAppCellId"
//    
    var homeFullscreenController: HomeFullscreenController!
    
    
    var topConstraint: NSLayoutConstraint?
    var leadingConstraint: NSLayoutConstraint?
    var widthConstraint: NSLayoutConstraint?
    var heightConstraint: NSLayoutConstraint?
    

    
    let items = [
        HomeItem.init(title: "See october Deals" , image: .octoberPromotions, Description: "Check this page monthly for doTERRA deals—discounts, free products, and special offers await!", backgroundColor: .deepLavanderColor, textColor: .white, descriptionTextColor: .systemGray6, cellType: .single),
        HomeItem.init(title: "Get the Hygge Bundle", image: .homehyggeduo, Description: "Warm up any space with the cozy Hygge® Blend and stylish diffuser—Scandinavian comfort in a hug.", backgroundColor: .white, textColor: .black, descriptionTextColor: .darkGray, cellType: .single),
        HomeItem.init(title: "New Products Are Here", image: .homenewproducts, Description: "Shop Products", backgroundColor: .white, textColor: .black, descriptionTextColor: .darkGray, cellType: .multiple),
        HomeItem.init(title: "90-Days Reset", image: ._90Daycleanse, Description: "Sluggish mornings? The 90-Day Reset is a simple detox to boost energy, mood, and clarity.", backgroundColor: .greenColorDoterra, textColor: .white, descriptionTextColor: .systemGray6, cellType: .single),
    ]
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        navigationController?.isNavigationBarHidden = true
        collectionView.backgroundColor = .systemGray6
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: HomeItem.CellType.single.rawValue)
        collectionView.register(HomeyMultipleAppCell.self, forCellWithReuseIdentifier: HomeItem.CellType.multiple.rawValue)
    }
    
    
    //MARK: - Actions
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let homeFullscreenController = HomeFullscreenController()
        homeFullscreenController.homeItem = items[indexPath.row]
        homeFullscreenController.dismissHandler = {
            self.handleRemoveRedView()
        }
        let fullscreenView = homeFullscreenController.view!
        view.addSubview(fullscreenView)

        addChild(homeFullscreenController)
        
        self.homeFullscreenController = homeFullscreenController
        self.collectionView.isUserInteractionEnabled = false

        
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        
        // absolute coordindates of cell
        guard let startingFrame = cell.superview?.convert(cell.frame, to: nil) else { return }
        
        self.startingFrame = startingFrame

        // auto layout constraint animations
        // 4 anchors
        fullscreenView.translatesAutoresizingMaskIntoConstraints = false
        topConstraint = fullscreenView.topAnchor.constraint(equalTo: view.topAnchor, constant: startingFrame.origin.y)
        leadingConstraint = fullscreenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: startingFrame.origin.x)
        widthConstraint = fullscreenView.widthAnchor.constraint(equalToConstant: startingFrame.width)
        heightConstraint = fullscreenView.heightAnchor.constraint(equalToConstant: startingFrame.height)
        
        [topConstraint, leadingConstraint, widthConstraint, heightConstraint].forEach({$0?.isActive = true})
        self.view.layoutIfNeeded()
        
        fullscreenView.layer.cornerRadius = 16
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {

            self.topConstraint?.constant = 0
            self.leadingConstraint?.constant = 0
            self.widthConstraint?.constant = self.view.frame.width
            self.heightConstraint?.constant = self.view.frame.height
            
            self.view.layoutIfNeeded() // starts animation

//            self.tabBarController?.tabBar.transform = CGAffineTransform(translationX: 0, y: 100)
            self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height
            
            guard let cell = self.homeFullscreenController.tableView.cellForRow(at: [0,0]) as? HomeFullscreenHeader else { return }
            
            cell.homeCell.topConstraint.constant = 65
            cell.layoutIfNeeded()

        }, completion: nil)
    }
    
    var startingFrame: CGRect?
    
    @objc func handleRemoveRedView() {

        self.navigationController?.navigationBar.isHidden = false
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
            
            self.homeFullscreenController.tableView.contentOffset = .zero
            
            guard let startingFrame = self.startingFrame else { return }
            self.topConstraint?.constant = startingFrame.origin.y
            self.leadingConstraint?.constant = startingFrame.origin.x
            self.widthConstraint?.constant = startingFrame.width
            self.heightConstraint?.constant = startingFrame.height
            
            self.view.layoutIfNeeded()
            
//            self.tabBarController?.tabBar.transform = .identity
            if let tabBarFrame = self.tabBarController?.tabBar.frame {
                self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height - tabBarFrame.height
            }
            
            guard let cell = self.homeFullscreenController.tableView.cellForRow(at: [0, 0]) as? HomeFullscreenHeader else { return }
            cell.homeCell.topConstraint.constant = 24
            cell.layoutIfNeeded()
            
        }, completion: { _ in
            self.homeFullscreenController.view.removeFromSuperview()
            self.homeFullscreenController.removeFromParent()
            self.collectionView.isUserInteractionEnabled = true
        })
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellId = items[indexPath.item].cellType.rawValue
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! BaseHomeCell
        cell.homeItem = items[indexPath.item]
        return cell
    }
    
    static let cellSize: CGFloat = 500
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 64, height: HomeController.cellSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 22
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 32, left: 0, bottom: 32, right: 0)
    }
}
