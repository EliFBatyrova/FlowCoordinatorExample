//
//  ModuleFactoryImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class ModuleFactoryImplementation: ModuleFactory {
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func enterName() -> (UIViewController, EnterNameModule) {
        let view = EnterNameViewController.instantiateFromSameNamedStoryboard()
        let interactor = EnterNameInteractorImplementation()
        interactor.analyticsReporter = dependencies.analyticsReporter
        let presenter = EnterNamePresenter(view: view, interactor: interactor)
        
        return (view, presenter)
    }
    
    func enterAge() -> (UIViewController, EnterAgeModule) {
        let view = EnterAgeViewController.instantiateFromSameNamedStoryboard()
        let interactor = EnterAgeInteractorImplementation()
        //
        let presenter = EnterAgePresenter(view: view, interactor: interactor)
        
        return (view, presenter)
    }
}
