//
//  LoginUseCase.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

final class LoginRequestUseCase: Routable {
    var viewController: UIViewController { return loginRequestVC }
    
    private let loginRequestVC: LoginRequestViewController
    let interactor: LoginRequestInteractor
    
    init(item: LoginRequestItem) {
        loginRequestVC = LoginRequestViewController.instantiate()
        
        let presenter = LoginRequestPresenter(output: loginRequestVC)
        
        interactor = LoginRequestInteractor(item: item,
                                            presenter: presenter)
        
        loginRequestVC.input = interactor
    }
}
