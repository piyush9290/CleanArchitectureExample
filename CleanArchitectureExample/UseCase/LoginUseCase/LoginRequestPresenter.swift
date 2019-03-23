//
//  LoginRequestPresenter.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation

protocol LoginRequestUseCasePresenter {
    func present()
}

final class LoginRequestPresenter: LoginRequestUseCasePresenter {
    
    let output: LoginRequestOutput
    
    init(output: LoginRequestOutput) {
        self.output = output
    }
    
    func present() {
        output.display(with: loginViewModel)
    }
    
    private var loginViewModel: LoginRequestViewModel {
        let userHeaderConfig = TextLabelConfig(color: .blue,
                                               font: .systemFont(ofSize: 14),
                                               string: "User Email",
                                               attributedString: nil)
        let passwordConfig = TextLabelConfig(color: .blue,
                                             font: .systemFont(ofSize: 14),
                                             string: "Password",
                                             attributedString: nil)
        
        let buttonConfig = ButtonConfig(title: "LOGIN",
                                        titleTextColor: .blue,
                                        backgroundColor: nil,
                                        image: nil)
        
        return LoginRequestViewModel(userHeaderLabelConfig: userHeaderConfig,
                                     passwordHeaderLabelConfig: passwordConfig,
                                     loginButtonConfig: buttonConfig)
    }
}
