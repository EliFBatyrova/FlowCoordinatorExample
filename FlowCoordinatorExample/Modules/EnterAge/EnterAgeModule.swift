//
//  EnterAgeModule.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

protocol EnterAgeModule: AnyObject {
    var didComplete: ((_ age: Int) -> Void)? { get set }
}

protocol EnterAgeView: View { }

protocol EnterAgePresenterForView: AnyObject {
    func viewDidRequestGoNext(age: String)
}

protocol EnterAgeInteractor: Interactor { }

protocol EnterAgeInteractorDelegate: AnyObject { }
