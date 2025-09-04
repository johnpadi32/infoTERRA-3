//
//  BaseTabBarControllers.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/2/25.
//

import UIKit

class BaseTabBarControllers: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        viewControllers = [
            createNavController(viewController: UIViewController(), title: "infoTERRA", imageName: "Home", image: "house.fill"),
            createNavController(viewController: UIViewController(), title: "Search", imageName: "Search", image: "magnifyingglass"),
            createNavController(viewController: CategoryPageController(), title: "Categories", imageName: "Categories", image: "lineweight")
        ]
    }
    
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String, image: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: image)
        
        return navController
    }
}
