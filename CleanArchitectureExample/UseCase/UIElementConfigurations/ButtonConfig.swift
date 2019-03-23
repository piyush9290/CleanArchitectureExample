//
//  ButtonConfig.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

struct ButtonConfig {
    let title: String?
    let titleTextColor: UIColor?
    let backgroundColor : UIColor?
    let image: UIImage?
    
    static var empty: ButtonConfig {
        return ButtonConfig(title: nil,
                            titleTextColor: nil,
                            backgroundColor: nil,
                            image: nil)
    }
}
