//
//  LoginRequestItem.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

typealias Closure<T> = (T) -> Void

struct LoginRequestItem {
    let loginCompletion: Closure<Bool>?
    let loginServices: Login
}
