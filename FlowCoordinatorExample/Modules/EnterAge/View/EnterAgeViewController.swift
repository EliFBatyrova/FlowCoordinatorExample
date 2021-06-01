//
//  EnterAgeViewController.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class EnterAgeViewController: UIViewController, EnterAgeView {
    
    @IBOutlet private weak var ageTextField: UITextField!
    
    //MARK: - EnterNameView
    
    typealias PresenterType = EnterAgePresenterForView
    var presenter: PresenterType?
    
    //MARK: -
    
    @IBAction private func onNextButtonTouchUpInside(_ sender: Any) {
        presenter?.viewDidRequestGoNext(age: ageTextField.text ?? "")
    }
}
