//
//  SystemFullScreenController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/19/25.
//

import UIKit

class SystemFullScreenController: UITableViewController {
    
    //MARK: - Properties
        
    var systemItem: SystemItem?
    

    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        
        dismissButton(selector: #selector(handleDismiss))
        

    }
    
    //MARK: - Helpers
    

    
    //MARK: - Actions
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
