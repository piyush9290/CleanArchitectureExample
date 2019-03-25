//
//  RootRouter.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

typealias VoidClosure = () -> Void

protocol IRouter {
    func start()
}

final class RootRouter: IRouter {
    
    fileprivate weak var window: UIWindow?
    fileprivate var currentState: RootRouterState!
    fileprivate var routable: Routable!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        currentState = .loginHome(item: createLoginItem)
        routable = currentState.routable
        window?.rootViewController = routable.viewController
    }
    
    private func pushViewController(withVC vc: UIViewController, completion: VoidClosure? = nil) {
        routable.viewController.present(vc, animated: true, completion: completion)
    }
    
    private var createLoginItem: LoginRequestItem {
        let completion: Closure<Bool> = { (result) in
            if result {
                debugPrint("Login Successful")
            } else {
                debugPrint("Wrong Login info")
            }
        }
        return LoginRequestItem(loginCompletion: completion,
                                loginServices: RequestAPI())
    }
    
}
