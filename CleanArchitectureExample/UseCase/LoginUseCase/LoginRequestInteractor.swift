//
//  LoginRequestInteractor.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

protocol LoginRequestInteractorInput: class {
    func isReady()
    func didPressLogin(withUserInfo loginInfo: InputInfo)
}

final class LoginRequestInteractor: LoginRequestInteractorInput {
    
    private let presenter: LoginRequestPresenter
    private let item: LoginRequestItem
    
    init(item: LoginRequestItem,
         presenter: LoginRequestPresenter) {
        self.item = item
        self.presenter = presenter
    }
    
    func isReady() {
        presenter.present()
    }
    
    func didPressLogin(withUserInfo loginInfo: InputInfo) {
        item.loginServices.login(using: loginInfo.email,
                                 password: loginInfo.password,
                                 completion: { [weak self] (_) in
                                    self?.item.loginCompletion?(true)
                                 }, failure: { [weak self] (_) in
                                    self?.item.loginCompletion?(false)
        })
    }
}
