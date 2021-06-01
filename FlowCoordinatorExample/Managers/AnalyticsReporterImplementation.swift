//
//  AnalyticsReporterImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 05.11.2020.
//

import Foundation
import FirebaseAnalytics

class AnalyticsReporterImplementation: AnalyticsReporter {
    
    func reportEvent(with message: String, parameters: [String: Any]?) {
        Analytics.logEvent(message, parameters: parameters)
    }
}
