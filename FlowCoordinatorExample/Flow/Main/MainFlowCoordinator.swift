//
//  MainFlowCoordinator.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class MainFlowCoordinator: Coordinator<FlowNavigationController>, MainFlow {
    
    private let flows: FlowFactory
    private let modules: ModuleFactory
    
    init(view: FlowNavigationController, flows: FlowFactory, modules: ModuleFactory) {
        self.flows = flows
        self.modules = modules
        
        super.init(view: view)
    }
    
    override func start() {
        super.start()
        
        view?.pushViewController(enterAge(), animated: true)
    }
    
    //MARK: -
    
    private func enterName(age: Int) -> UIViewController {
        let (vc, module) = modules.enterName()
                
        return vc
    }
    
    private func enterAge() -> UIViewController {
        let (vc, module) = modules.enterAge()
        
        module.didComplete = vc.router.push(enterName)
        
        return vc
    }
}
