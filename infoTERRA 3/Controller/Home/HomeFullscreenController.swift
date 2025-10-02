//
//  HomeFullscreenController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/1/25.
//

import UIKit

class HomeFullscreenController: UITableViewController {
    
    //MARK: - Properties
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        

        
        
    }
    
    //MARK: - Helpers
    
    //MARK: - Actions
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let headerCell = HomeFullscreenHeader()
            return headerCell
        }
            let cell = HomeFullscreenDescription()
            return cell
    

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 450
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }

}
