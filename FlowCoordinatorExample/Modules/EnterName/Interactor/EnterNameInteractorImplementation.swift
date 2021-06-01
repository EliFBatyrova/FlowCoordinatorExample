//
//  EnterNameInteractorImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class EnterNameInteractorImplementation: EnterNameInteractor {
    
    //MARK: - EnterNameInteractor
    
    typealias Delegate = EnterNameInteractorDelegate
    weak var delegate: Delegate?
    
    var analyticsReporter: AnalyticsReporter!
    
    func sendAnalytics(parameters: [String : Any]) {
        analyticsReporter.reportEvent(with: "EnterNameScreen", parameters: parameters)
    }
}
