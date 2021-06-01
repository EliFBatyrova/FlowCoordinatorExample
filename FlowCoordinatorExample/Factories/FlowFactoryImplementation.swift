//
//  FlowFactoryImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class FlowFactoryImplementation: FlowFactory {
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func main() -> (UIViewController, MainFlow) {
        let view = MainFlowNavigationController()
        let flow = MainFlowCoordinator(view: view, flows: dependencies.flowFactory, modules: dependencies.moduleFactory)
        
        return (view, flow)
    }
}
