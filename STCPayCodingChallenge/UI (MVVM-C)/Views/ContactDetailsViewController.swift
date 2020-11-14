//
//  ContactDetailsViewController.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    lazy var contactDetailsView = ContactDetailsView()
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
        contactDetailsView.contactCardView.photoView.image = senator.image
        contactDetailsView.contactCardView.nameLabel.text = senator.name
        contactDetailsView.contactCardView.descriptionLabel.text = senator.description
        contactDetailsView.contactCardView.partyLabel.text = senator.party
        contactDetailsView.contactCardView.roleLabel.text = "Senator"
        
        contactDetailsView.contactInfoView.addressLabel.text = senator.address
        contactDetailsView.contactInfoView.birthdayLabel.text = senator.birthday
        contactDetailsView.contactInfoView.genderLabel.text = senator.gender
        contactDetailsView.contactInfoView.websiteLabel.text = senator.website
        contactDetailsView.contactInfoView.endDateLabel.text = senator.enddate
        contactDetailsView.contactInfoView.personNameLabel.text = senator.name
        contactDetailsView.contactInfoView.sortnameLabel.text = senator.sortname
        contactDetailsView.contactInfoView.officeLabel.text = senator.office
    }
}
