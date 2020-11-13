//
//  ContactDetailsViewController.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    private let contactDetailsView = ContactDetailsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContactDetailsView()
    }
    
    private func setupContactDetailsView() {
        view.addSubview(contactDetailsView)
        contactDetailsView.nameLabel.text = "Name"
        contactDetailsView.descriptionLabel.text = "Description"
        contactDetailsView.partyLabel.text = "Democrat"
        contactDetailsView.roleLabel.text = "Senator"
    }
}
