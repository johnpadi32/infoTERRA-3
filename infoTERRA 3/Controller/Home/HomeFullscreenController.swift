//
//  HomeFullscreenController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/1/25.
//

import UIKit

class HomeFullscreenController: UITableViewController {
    
    //MARK: - Properties
    
    var dismissHandler: (() -> ())?
    var homeItem: HomeItem?

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false

    }
    
    //MARK: - Helpers
    
    @objc func handleDismiss(button: UIButton) {
        button.isHidden = true
        dismissHandler?()
        
    }
    
    //MARK: - Actions
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            let headerCell = HomeFullscreenHeader()
            headerCell.closeButton.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
            headerCell.homeCell.homeItem = homeItem
            return headerCell
        }
            let cell = HomeFullscreenDescription()
            return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 324
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
}
