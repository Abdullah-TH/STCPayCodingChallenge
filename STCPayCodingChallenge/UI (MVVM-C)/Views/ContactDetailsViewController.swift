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
        contactDetailsView.nameLabel.text = senator.name
        contactDetailsView.descriptionLabel.text = senator.description
        contactDetailsView.partyLabel.text = senator.party
        contactDetailsView.roleLabel.text = "Senator"
        
        contactDetailsView.addressLabel.text = senator.address
        contactDetailsView.birthdayLabel.text = senator.birthday
        contactDetailsView.genderLabel.text = senator.gender
        contactDetailsView.websiteLabel.text = senator.website
        contactDetailsView.endDateLabel.text = senator.enddate
        contactDetailsView.personNameLabel.text = senator.name
        contactDetailsView.sortnameLabel.text = senator.sortname
        contactDetailsView.officeLabel.text = senator.office
        
        contactDetailsView.photoView.image = getAppropriateImage(for: senator)
    }
    
    private func getAppropriateImage(for senator: UISenator) -> UIImage? {
        switch senator.party {
        case "Democrat":
            return #imageLiteral(resourceName: "democrat_logo")
        case "Republican":
            return #imageLiteral(resourceName: "republican_logo")
        default:
            return UIImage(systemName: "person.fill")
        }
    }
}
