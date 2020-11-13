//
//  UIViewController+addChild.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit


extension UIViewController {
    
    func add(child childViewController: UIViewController, to containerView: UIView? = nil) {
        var containerView = containerView
        if containerView == nil {
            containerView = view
        }
        self.addChild(childViewController)
        containerView?.addSubview(childViewController.view)
        childViewController.didMove(toParent: self)
    }
}
