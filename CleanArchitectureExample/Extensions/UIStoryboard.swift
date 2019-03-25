//
//  UIStoryboard.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-24.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func controller<T: UIViewController>(fromStoryboard name: String) -> T {
        let storyBoard = UIStoryboard(name: name, bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T else {
            fatalError("Cant instanciate controller")
        }
        return vc
    }
}
