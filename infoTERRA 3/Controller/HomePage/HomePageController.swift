//
//  CategoryPageController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class HomePageController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    
    let reuseIdentifier = "id"
    let reuseHeaderIdentifier = "headerId"
    
    var categorryArray = [Category]()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        congfigureTitle()
        fetchCategories()
        
        CategoryService.fetchCategoriesFromFirebase { allCategory in
            print("Callback is completed")
        }
    }

    
    //MARK: - Helpers
    
    func congfigureTitle() {
        let greetingLabel = UILabel()
        greetingLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        greetingLabel.textColor = .gray
        greetingLabel.textAlignment = .left
        greetingLabel.text = getGreeting()
        
        let titleLabel = UILabel()
        titleLabel.text = "Welcome to infoTERRA"
        titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        titleLabel.textColor = .deepLavanderColor
        titleLabel.textAlignment = .center

        let stackView = UIStackView(arrangedSubviews: [greetingLabel, titleLabel])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 2
        
        let containerView = UIView()
        containerView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            stackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])

        containerView.frame = CGRect(x: 0, y: 0, width: 200, height: 44)

        navigationItem.titleView = containerView
    }
    
    func configureUI() {
        
        collectionView.backgroundColor = .systemGray6
        collectionView.register(HomeCategoryCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.register(HomePageHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseHeaderIdentifier)
        
        profileButton(selector: #selector(handleUser))
        
//        let refresher = UIRefreshControl()
//        refresher.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
//        collectionView.refreshControl = refresher
    }
    
    private func getGreeting() -> String {
        let hour = Calendar.current.component(.hour, from: Date())

        switch hour {
        case 5..<12: return "Good morning"
        case 12..<17: return "Good afternoon"
        case 17..<22: return "Good evening"
        default: return "Hello"
        }
    }
    

    
    //MARK: - Actions
    
    @objc func handleUser() {
        let controller = ProfileController()
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen

        present(nav, animated: true)
    }
    
//    @objc func handleRefresh() {
//        print("refresh pressed ")
//    }
    
    private func fetchCategories() {
        CategoryService.fetchCategoriesFromFirebase { allCategory in
            self.categorryArray = allCategory
            self.collectionView.reloadData()
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseHeaderIdentifier, for: indexPath) as! HomePageHeader
        header.delegate = self
        return header
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 320
        )
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categorryArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCategoryCell
        cell.generateCell(categorryArray[indexPath.row])
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let controller = ProductController(category: categorryArray[indexPath.row])

        navigationController?.pushViewController(controller, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 2) - 20, height: 250)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 12, bottom: 10, right: 12)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffSet = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffSet
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))

    }
}

extension HomePageController: HomePageHeaderDelegate {
    func ShowPromoPage() {
        let controller = PromosOfferController(mode: .fullscreen)
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen

        present(nav, animated: true)
        
    }

}
