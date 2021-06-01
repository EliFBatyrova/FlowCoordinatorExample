//
//  EnterNamePresenter.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class EnterNamePresenter<V, I>: Presenter<V, I>, EnterNameModule where V: EnterNameView, I: EnterNameInteractor {

    //MARK: - EnterNameModule

    var didComplete: ((String) -> Void)?
}

//MARK: - EnterNamePresenterForView

extension EnterNamePresenter: EnterNamePresenterForView {

    func viewDidRequestGoNext(name: String) {
        didComplete?(name)
        
        interactor.sendAnalytics(parameters: ["name": name])
    }
    
    func viewDidLoad() {
        interactor.sendAnalytics(parameters: ["action": "screen_view"])
    }
}

//MARK: - EnterNameInteractorDelegate

extension EnterNamePresenter: EnterNameInteractorDelegate { }
