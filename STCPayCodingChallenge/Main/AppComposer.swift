//
//  AppComposer.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import Foundation

final class AppComposer {
    
    func createContactsCoordinator() -> ContactsCoordinator {
        let contactListVC = createContactListViewController()
        let contactsCoordinator = ContactsCoordinator(contactListVC: contactListVC)
        return contactsCoordinator
    }
    
    private func createContactListViewController() -> ContactListViewController {
        let senatorsLoader = FileSenatorsLoader()
        let senatorsVM = SenatorsViewModel(senatorsLoader: senatorsLoader)
        let contactListVC = ContactListViewController(viewModel: senatorsVM)
        return contactListVC
    }
}
