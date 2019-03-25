//
//  SampleWebServices.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-24.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

struct UserInfo {
    let email: String
}

protocol Login {
    func login(using email: String,
               password: String,
               completion: @escaping (UserInfo) -> Void,
               failure: @escaping (Error) -> Void)
}

protocol Register {
    func register(using user: UserInfo,
                  completion: @escaping (UserInfo) -> Void,
                  failure: @escaping (Error) -> Void)
}

final class RequestAPI: Login, Register {
    
    init() {
        
    }
    
    func login(using email: String,
               password: String,
               completion: @escaping (UserInfo) -> Void,
               failure: @escaping (Error) -> Void) {
        let isValid = email == "piyush@piyush.com" && password == "piyush"
        if isValid {
            let userInfo = UserInfo(email: email)
            completion(userInfo)
        } else {
            let error = NSError(domain: "Wrong UserName Password", code: -1, userInfo: nil)
            failure(error)
        }
    }
    
    func register(using user: UserInfo,
                  completion: @escaping (UserInfo) -> Void,
                  failure: @escaping (Error) -> Void) {
        
    }
}
