//
//  UILabel.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

import UIKit

extension UILabel {
    func accept(config: TextLabelConfig) {
        font = config.font
        textColor = config.color
        
        if let string = config.string {
            text = string
        }
        
        if let attributedString = config.attributedString {
            attributedText = attributedString
        }
        
        if let alignment = config.textAlignment {
            textAlignment = alignment
        }
    }
}
