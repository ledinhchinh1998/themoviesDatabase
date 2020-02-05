//
//  UIViewController.swift
//  Movie Database
//
//  Created by Chinh le on 2/5/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func pushViewController<T: UIViewController>(type: T.Type, nameStoryboard: String?, data: (T) -> Void, bundle: Bundle? = nil) {
        guard let nameStoryboard = nameStoryboard else {
            let viewController = T(nibName: T.className, bundle: bundle)
            navigationController?.pushViewController(viewController, animated: true)
            return
        }
        
        let storyboard = UIStoryboard(name: nameStoryboard, bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: T.className) as! T
        navigationController?.pushViewController(viewController, animated: true)
    }
}
