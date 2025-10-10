//
//  BackEnabledNAvigationController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/10/25.
//

import UIKit

class BackEnabledNAvigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.interactivePopGestureRecognizer?.delegate = self
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.viewControllers.count > 1
    }
}
