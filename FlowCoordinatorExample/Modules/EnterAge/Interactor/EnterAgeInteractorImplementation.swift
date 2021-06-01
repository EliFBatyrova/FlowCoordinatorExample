//
//  EnterAgeInteractorImplementation.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class EnterAgeInteractorImplementation: EnterAgeInteractor {
    
    //MARK: - EnterNameInteractor
    
    typealias Delegate = EnterAgeInteractorDelegate
    weak var delegate: Delegate?
}
