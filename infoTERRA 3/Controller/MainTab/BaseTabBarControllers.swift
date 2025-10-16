//
//  BaseTabBarControllers.swift
//  infoTERRA 3
//
//  Created by John Padilla on 9/2/25.
//

import UIKit

class BaseTabBarControllers: UITabBarController, UISearchBarDelegate {
    
    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .white
        
        viewControllers = [
            createNavController(viewController: HomeController(), title: "infoTERRA", imageName: "Home", image: "house.fill"),
            createNavController(viewController: CategoryPageController(), title: "Discover", imageName: "Categories", image: "sparkle.magnifyingglass"),
            createNavController(viewController: SearchResultController(), title: "Profile", imageName: "Profile", image: "person"),
        ]
    }
    
    
    
    fileprivate func createNavController(viewController: UIViewController, title: String?, imageName: String, image: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        
//        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: image)

        
        return navController
    }
}
