//
//  ContactDetailsView.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactDetailsView: UIView {
    
    let contactCardView = ContactCardView()
    let contactInfoView = ContactInfoView()
    
    lazy var backButton = button(with: #imageLiteral(resourceName: "left_arrow"))
    
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
    
    override func didMoveToSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: 0),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: 0),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 0),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: 0),
        ])
    }
    
    private func setup() {
        backgroundColor = Colors.backgroundColor
        translatesAutoresizingMaskIntoConstraints = false
        setupBackButton()
        setupContactCardView()
        setupContactInfoView()
    }
    
    private func setupBackButton() {
        addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
    }
    
    private func setupContactCardView() {
        addSubview(contactCardView)
        contactCardView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactCardView.heightAnchor.constraint(equalToConstant: 300),
            contactCardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            contactCardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contactCardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70),
        ])
    }
    
    private func setupContactInfoView() {
        addSubview(contactInfoView)
        contactInfoView.translatesAutoresizingMaskIntoConstraints = false 
        NSLayoutConstraint.activate([
            contactInfoView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            contactInfoView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contactInfoView.topAnchor.constraint(equalTo: contactCardView.bottomAnchor, constant: 20),
        ])
    }
}
