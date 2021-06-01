//
//  Dependencies.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

protocol Dependencies {
    var moduleFactory: ModuleFactory { get }
    var flowFactory: FlowFactory { get }
    
    var analyticsReporter: AnalyticsReporter { get }
}
