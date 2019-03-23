//
//  LoginInputInfo.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

protocol InputInfo {
    var email: String { get }
    var password: String { get }
}

struct UserInfoInput: InputInfo {
    let email: String
    let password: String
}
