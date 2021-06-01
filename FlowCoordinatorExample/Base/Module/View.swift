//
//  View.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

protocol View: AnyObject {
    
    associatedtype PresenterType
    var presenter: PresenterType? { get set }
}
