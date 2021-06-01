//
//  EnterNameViewController.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class EnterNameViewController: UIViewController, EnterNameView {
    
    @IBOutlet private weak var nameTextField: UITextField!
    
    //MARK: - EnterNameView
    
    typealias PresenterType = EnterNamePresenterForView
    var presenter: PresenterType?
    
    //MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
    
    @IBAction private func onNextButtonTouchUpInside(_ sender: Any) {
        presenter?.viewDidRequestGoNext(name: nameTextField.text ?? "")
    }
}
