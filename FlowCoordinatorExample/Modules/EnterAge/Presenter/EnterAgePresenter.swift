//
//  EnterAgePresenter.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class EnterAgePresenter<V, I>: Presenter<V, I>, EnterAgeModule where V: EnterAgeView, I: EnterAgeInteractor {

    //MARK: - EnterNameModule

    var didComplete: ((Int) -> Void)?
}

//MARK: - EnterAgePresenterForView

extension EnterAgePresenter: EnterAgePresenterForView {

    func viewDidRequestGoNext(age: String) {
        guard let age = Int(age) else {
            fatalError()
        }
        
        didComplete?(age)
    }
}

//MARK: - EnterAgeInteractorDelegate

extension EnterAgePresenter: EnterAgeInteractorDelegate { }
