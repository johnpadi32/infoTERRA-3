//
//  CategoryPageController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/3/25.
//

import UIKit

class CategoryPageController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    
    let reuseIdentifier = "id"
    let reuseHeaderIdentifier = "headerId"
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        congfigureTitle()
    }
    
    //MARK: - Helpers
    
    func congfigureTitle() {
        let greetingLabel = UILabel()
        greetingLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        greetingLabel.textColor = .gray
        greetingLabel.textAlignment = .left
        greetingLabel.text = getGreeting()
        
        // Create title label
        let titleLabel = UILabel()
        titleLabel.text = "Welcome to infoTERRA"
        titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        titleLabel.textColor = .deepLavanderColor
        titleLabel.textAlignment = .center
        
        // Stack them vertically
        let stackView = UIStackView(arrangedSubviews: [greetingLabel, titleLabel])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 2
        
        // Wrap in a container view
        let containerView = UIView()
        containerView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Anchor label to the left inside container
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            stackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])

        // Set a fixed width for the container (adjust as needed)
        containerView.frame = CGRect(x: 0, y: 0, width: 200, height: 44)

        // Assign to titleView
        navigationItem.titleView = containerView
    }
    
    func configureUI() {
        
//        navigationController?.navigationBar.prefersLargeTitles = true

        collectionView.backgroundColor = .systemBackground
        collectionView.register(CategoryGroupCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.register(CategoryPageHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseHeaderIdentifier)
        
//        collectionView.register(PromoHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseHeaderIdentifier)
        
        searchButton(selector: #selector(handleSearchButton))
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
    
    @objc func handleSearchButton() {
        let controller = SearchResultController()
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseHeaderIdentifier, for: indexPath) as! CategoryPageHeader
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 320
        )
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CategoryGroupCell
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let controller = ProductController()
        controller.title = "Essential Oils blends"
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
}

