//
//  SearchResultController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/14/25.
//

import UIKit

class SearchResultController: BaseListController, UICollectionViewDelegateFlowLayout, UISearchResultsUpdating {
    
    //MARK: - Properties
    
    let cellId = "cellId"
    
    var allItems = ["Apple", "Orange", "Banana", "Grape"]
    var filteredItems: [String] = []
    
    let searchController = UISearchController(searchResultsController: nil)
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureSearchController()
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
        
        dismissButton(selector: #selector(handleDismiss))
    }

    func configureSearchController() {
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Products, Keywords..."
        
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        definesPresentationContext = true
        
        filteredItems = allItems
    }
    
    //MARK: - Actions
    
    @objc func handleDismiss() {
        self.dismiss(animated: true)
    }

    // MARK: - UISearchResultsUpdating
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text?.lowercased(), !searchText.isEmpty else {
            filteredItems = allItems
            collectionView.reloadData()
            return
        }
        
        filteredItems = allItems.filter { $0.lowercased().contains(searchText) }
        collectionView.reloadData()
    }

    // MARK: - Table view data source
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredItems.count
    }
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchResultCell
//        cell.textLabel?.text = filteredItems[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
}

