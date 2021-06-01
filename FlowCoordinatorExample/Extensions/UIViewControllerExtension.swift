//
//  UIViewControllerExtension.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit

extension UIViewController {
    class func instantiateFromSameNamedStoryboard() -> Self {
        let identifier = String(describing: self)
        let storyboard = UIStoryboard(name: identifier, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
