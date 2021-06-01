//
//  DependenciesImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class DependenciesImplementation: Dependencies {
    
    lazy var moduleFactory: ModuleFactory = ModuleFactoryImplementation(dependencies: self)
    lazy var flowFactory: FlowFactory = FlowFactoryImplementation(dependencies: self)
    
    lazy var analyticsReporter: AnalyticsReporter = AnalyticsReporterImplementation()
}
