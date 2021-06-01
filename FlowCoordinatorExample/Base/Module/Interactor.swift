//
//  Interactor.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

protocol Interactor: AnyObject {
    
    associatedtype Delegate
    
    // weak
    var delegate: Delegate? { get set }
}
