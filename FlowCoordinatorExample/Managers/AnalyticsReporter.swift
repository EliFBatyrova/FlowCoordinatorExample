//
//  AnalyticsReporter.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 05.11.2020.
//

import Foundation

protocol AnalyticsReporter {
    
    func reportEvent(with message: String, parameters: [String: Any]?)
}
