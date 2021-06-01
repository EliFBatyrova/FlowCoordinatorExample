//
//  ModuleFactory.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

protocol ModuleFactory {
    func enterName() -> (UIViewController, EnterNameModule)
    func enterAge() -> (UIViewController, EnterAgeModule)
}
