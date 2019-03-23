//
//  LoginRequestViewController.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import UIKit

protocol LoginRequestOutput {
    func display(with model: LoginRequestViewModel)
}

class LoginRequestViewController: UIViewController {
    
    @IBOutlet weak var userNameHeaderLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordHeaderLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    weak var input: LoginRequestInteractorInput?
    
    class func instantiate() -> LoginRequestViewController {
        let vc: LoginRequestViewController = UIStoryboard.controller(fromStoryboard: "Main")
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        input?.isReady()
    }
    
    private func initUI() {
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
    }
    
    private func updateUI(using model: LoginRequestViewModel) {
        userNameHeaderLabel.accept(config: model.userHeaderLabelConfig)
        passwordHeaderLabel.accept(config: model.passwordHeaderLabelConfig)
        loginButton.accept(config: model.loginButtonConfig)
    }
    
    @objc private func login() {
        let email = userNameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let userInfo = UserInfoInput(email: email, password: password)
        input?.didPressLogin(withUserInfo: userInfo)
    }
}

extension LoginRequestViewController: LoginRequestOutput {
    func display(with model: LoginRequestViewModel) {
        updateUI(using: model)
    }
}
