//
//  ContactsCoordinator.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactsCoordinator: UIViewController {
    
    let navigator = UINavigationController()
    let contactListVC: ContactListViewController
    
    init(contactListVC: ContactListViewController) {
        self.contactListVC = contactListVC
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        start()
    }
    
    private func setup() {
        contactListVC.delegate = self 
        navigator.viewControllers = [contactListVC]
    }
    
    private func start() {
        add(child: navigator)
    }
}

extension ContactsCoordinator: ContactListViewControllerDelegate {
    
    func didSelect(senator: UISenator) {
        let contactDetailsVC = ContactDetailsViewController()
        navigator.pushViewController(contactDetailsVC, animated: true)
    }
}
