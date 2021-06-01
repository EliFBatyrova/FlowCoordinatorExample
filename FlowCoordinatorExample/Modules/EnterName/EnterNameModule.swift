//
//  EnterNameModule.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

protocol EnterNameModule: AnyObject {
    var didComplete: ((_ name: String) -> Void)? { get set }
}

protocol EnterNameView: View { }

protocol EnterNamePresenterForView: AnyObject {
    func viewDidRequestGoNext(name: String)
    func viewDidLoad()
}

protocol EnterNameInteractor: Interactor {
    func sendAnalytics(parameters: [String: Any])
}

protocol EnterNameInteractorDelegate: AnyObject { }
