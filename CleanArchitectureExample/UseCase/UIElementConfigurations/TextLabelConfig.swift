//
//  TextLabelConfig.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

struct TextLabelConfig {
    let color: UIColor
    let font: UIFont
    let string: String?
    let attributedString: NSAttributedString?
    
    var textAlignment: NSTextAlignment?
    
    static var defaultConfig: TextLabelConfig {
        return TextLabelConfig(color: .black,
                               font: .systemFont(ofSize: 12),
                               string: "",
                               attributedString: nil)
    }
    
    init(color: UIColor = .black,
         font: UIFont = .systemFont(ofSize: 11),
         string: String? = "",
         attributedString: NSAttributedString? = nil) {
        self.color = color
        self.font = font
        self.string = string
        self.attributedString = attributedString
    }
}
