//
//  NavigationRouter.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

extension UIViewController {
    
    var router: NavigationRouter {
        return NavigationRouter(viewController: self)
    }
}

struct NavigationRouter {
    
    unowned private let viewController: UIViewController
    
    private var navigationController: UINavigationController? {
        return viewController.navigationController
    }
    
    fileprivate init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func push(animated: Bool, _ make: @escaping () -> UIViewController) -> (() -> Void) {
        return {
            let newViewController = make()
            self.navigationController?.pushViewController(newViewController, animated: animated)
        }
    }
    
    func push<Input>(animated: Bool, _ make: @escaping (Input) -> UIViewController) -> ((Input) -> Void) {
        return { input in
            let newViewController = make(input)
            self.navigationController?.pushViewController(newViewController, animated: animated)
        }
    }
}

extension NavigationRouter {
    
    func push(_ make: @escaping () -> UIViewController) -> (() -> Void) {
        return push(animated: true, make)
    }
    
    func push<Input>(_ make: @escaping (Input) -> UIViewController) -> ((Input) -> Void) {
        return push(animated: true, make)
    }
}

