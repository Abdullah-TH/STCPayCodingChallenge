//
//  ContactDetailsViewController.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    private let contactDetailsView = ContactDetailsView()
    private let senator: UISenator
    
    init(senator: UISenator) {
        self.senator = senator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContactDetailsView()
    }
    
    private func setupContactDetailsView() {
        view.addSubview(contactDetailsView)
        contactDetailsView.nameLabel.text = senator.name
        contactDetailsView.descriptionLabel.text = senator.description
        contactDetailsView.partyLabel.text = senator.party
        contactDetailsView.roleLabel.text = "Senator"
    }
}
