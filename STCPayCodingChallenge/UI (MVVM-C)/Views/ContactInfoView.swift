//
//  ContactInfoView.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 14/11/2020.
//

import UIKit

final class ContactInfoView: UIView {
    
    lazy var addressKeyLabel = smallGrayLabel(text: "Address")
    lazy var addressLabel = label()
    lazy var officeKeyLabel = smallGrayLabel(text: "Office")
    lazy var officeLabel = label()
    lazy var personNameKeyLabel = smallGrayLabel(text: "Name")
    lazy var personNameLabel = label()
    lazy var birthdayKeyLabel = smallGrayLabel(text: "Birthday")
    lazy var birthdayLabel = label()
    lazy var enddateKeyLabel = smallGrayLabel(text: "End date")
    lazy var endDateLabel = label()
    lazy var genderKeyLabel = smallGrayLabel(text: "Gender")
    lazy var genderLabel = label()
    lazy var sortnameKeyLabel = smallGrayLabel(text: "Sortname")
    lazy var sortnameLabel = label()
    lazy var websiteKeyLabel = smallGrayLabel(text: "Website")
    lazy var websiteLabel = label()
    
    lazy var keyValueLabelsStack: UIStackView = stackView(
        axis: .vertical,
        spacing: 16,
        views: [
            stackView(views: [addressKeyLabel, addressLabel]),
            stackView(views: [officeKeyLabel, officeLabel]),
            stackView(views: [birthdayKeyLabel, birthdayLabel]),
            stackView(views: [genderKeyLabel, genderLabel]),
            stackView(views: [sortnameKeyLabel, sortnameLabel]),
            stackView(views: [websiteKeyLabel, websiteLabel])
        ]
    )
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    convenience init() {
        self.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        backgroundColor = Colors.backgroundColor
        setupKeyValueLabels()
    }
    
    private func setupKeyValueLabels() {
        addSubview(keyValueLabelsStack)
        NSLayoutConstraint.activate([
            keyValueLabelsStack.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            keyValueLabelsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            keyValueLabelsStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}
