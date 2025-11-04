//
//  ProfileController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/29/25.
//

import UIKit

class ProfileController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: #selector(handleDismiss))
        
    }
    
    //MARK: - Helpers
    
    //MARK: - Actions
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
}
