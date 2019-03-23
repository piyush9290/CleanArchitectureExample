//
//  RootRouterState.swift
//  CleanArchitectureExample
//
//  Created by Piyush Sharma on 2019-03-23.
//  Copyright © 2019 Piyush Sharma. All rights reserved.
//

import Foundation
import UIKit

protocol Routable {
    var viewController: UIViewController { get }
}

enum RootRouterState: Equatable {
    case loginHome(item: LoginRequestItem?)
    
    var routable: Routable {
        let vc: Routable
        switch self {
        case let .loginHome(item): vc = loginHomeVC(item)
        }
        return vc
    }
    
    private func loginHomeVC(_ item: LoginRequestItem?) -> Routable {
        guard let vcItem = item else { return UIViewController() }
        return LoginRequestUseCase(item: vcItem)
    }
    
    static func == (lhs: RootRouterState, rhs: RootRouterState) -> Bool {
        switch (lhs, rhs) {
        case (.loginHome,.loginHome): return true
        }
    }
}

extension UIViewController: Routable {
    var viewController: UIViewController {
        return self
    }
}
