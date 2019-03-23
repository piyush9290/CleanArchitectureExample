//
//  UIButton.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func accept(config: ButtonConfig, with state: UIControl.State = .normal) {
        setTitle(config.title, for: state)
        setTitleColor(config.titleTextColor, for: state)
        setImage(config.image, for: state)
        backgroundColor = config.backgroundColor
    }
}
