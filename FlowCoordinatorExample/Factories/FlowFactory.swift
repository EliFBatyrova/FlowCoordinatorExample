//
//  FlowFactory.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

protocol FlowFactory {
    func main() -> (UIViewController, MainFlow)
    // flow ... 
}
