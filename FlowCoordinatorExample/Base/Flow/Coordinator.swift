//
//  Coordinator.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import Foundation

class Coordinator<View>: Flow where View: FlowHolder {
    
    weak var view: View?
    
    init(view: View) {
        self.view = view
        view.flow = self
    }
    
    func start() { }
}
