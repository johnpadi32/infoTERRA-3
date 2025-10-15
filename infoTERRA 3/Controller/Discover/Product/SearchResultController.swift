//
//  SearchResultController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/14/25.
//

import UIKit

class SearchResultController: UITableViewController, UISearchResultsUpdating {
    var allItems = ["Apple", "Orange", "Banana", "Grape"]
    var filteredItems: [String] = []
    
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search"
        
        // Configure the search controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Items"
        
        // Add the search bar to the navigation item
        navigationItem.searchController = searchController
        
        // Keep the search bar visible, even on a small screen
        navigationItem.hidesSearchBarWhenScrolling = false
        
        definesPresentationContext = true
        
        // Initially, the table view shows all items
        filteredItems = allItems
    }

    // MARK: - UISearchResultsUpdating
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text?.lowercased(), !searchText.isEmpty else {
            filteredItems = allItems
            tableView.reloadData()
            return
        }
        
        filteredItems = allItems.filter { $0.lowercased().contains(searchText) }
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = filteredItems[indexPath.row]
        return cell
    }
}

