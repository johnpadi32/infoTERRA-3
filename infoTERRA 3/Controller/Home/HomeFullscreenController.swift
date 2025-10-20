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
        tableView.contentInsetAdjustmentBehavior = .never
        
        let height = UIApplication.shared.statusBarFrame.height
        tableView.contentInset = .init(top: 0, left: 0, bottom: height, right: 0)

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
            headerCell.homeCell.layer.cornerRadius = 0
            headerCell.clipsToBounds = true
            return headerCell
        }
            let cell = HomeFullscreenDescription()
            return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return HomeController.cellSize
            
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
}
