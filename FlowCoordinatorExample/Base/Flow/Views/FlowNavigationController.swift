//
//  FlowNavigationController.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

class FlowNavigationController: UINavigationController, FlowHolder {
    
    var flow: Flow?
    
    //MARK: -
    
    private var isFlowStarted = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if !isFlowStarted {
            isFlowStarted = true
            flow?.start()
        }
    }
}
