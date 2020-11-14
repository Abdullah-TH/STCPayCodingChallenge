//
//  ContactCardView.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 14/11/2020.
//

import UIKit

final class ContactCardView: UIView {
    
    lazy var photoView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel = label(textAlignment: .center)
    lazy var descriptionLabel: UILabel = label(textColor: .gray)
    lazy var nameAndDescriptionStack: UIStackView = stackView(
        axis: .vertical,
        spacing: 8,
        views: [nameLabel, descriptionLabel]
    )
    
    private lazy var partyKeyLabel = smallGrayLabel(text: "Party")
    private lazy var roleKeyLabel = smallGrayLabel(text: "Role")
    lazy var partyLabel = label()
    lazy var roleLabel = label()
    lazy var partyStackView: UIStackView = stackView(views: [partyKeyLabel, partyLabel])
    lazy var roleStackView: UIStackView = stackView(views: [roleKeyLabel, roleLabel])
    lazy var partyAndRoleStack: UIStackView = stackView(
        axis: .horizontal,
        spacing: 30,
        views: [roleStackView, separatorView, partyStackView]
    )
    
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.3
        return view
    }()
    
    lazy var emailButton = button(with: #imageLiteral(resourceName: "email"))
    lazy var phoneButton = button(with: #imageLiteral(resourceName: "phone"))
    lazy var speakButton = button(with: #imageLiteral(resourceName: "speak"))
    
    lazy var buttonsStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [emailButton, phoneButton, speakButton])
        sv.axis = .horizontal
        sv.spacing = 40
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
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
        backgroundColor = Colors.cardBackgroundColor
        backgroundColor = .white
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: -3, height: 3)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        setupPhotoView()
        setupNameAndDescriptionStack()
        setupPartyAndRoleStack()
        setupButtons()
        setupButtonsStackView()
    }
    
    private func setupPhotoView() {
        addSubview(photoView)
        NSLayoutConstraint.activate([
            photoView.heightAnchor.constraint(equalToConstant: 100),
            photoView.widthAnchor.constraint(equalToConstant: 100),
            photoView.topAnchor.constraint(equalTo: topAnchor, constant: -50),
            photoView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setupNameAndDescriptionStack() {
        addSubview(nameAndDescriptionStack)
        NSLayoutConstraint.activate([
            nameAndDescriptionStack.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 20),
            nameAndDescriptionStack.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setupPartyAndRoleStack() {
        addSubview(partyAndRoleStack)
        NSLayoutConstraint.activate([
            partyAndRoleStack.topAnchor.constraint(equalTo: nameAndDescriptionStack.bottomAnchor, constant: 20),
            partyAndRoleStack.centerXAnchor.constraint(equalTo: nameAndDescriptionStack.centerXAnchor),
            separatorView.widthAnchor.constraint(equalToConstant: 1),
            partyLabel.widthAnchor.constraint(equalTo: roleLabel.widthAnchor),
            partyKeyLabel.widthAnchor.constraint(equalTo: roleKeyLabel.widthAnchor)
        ])
    }
    
    private func setupButtons() {
        for button in [phoneButton, emailButton, speakButton] {
            NSLayoutConstraint.activate([
                button.heightAnchor.constraint(equalToConstant: 50),
                button.widthAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    
    private func setupButtonsStackView() {
        addSubview(buttonsStackView)
        NSLayoutConstraint.activate([
            buttonsStackView.topAnchor.constraint(equalTo: partyAndRoleStack.bottomAnchor, constant: 50),
            buttonsStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
