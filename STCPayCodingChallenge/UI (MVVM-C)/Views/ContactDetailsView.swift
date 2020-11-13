//
//  ContactDetailsView.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactDetailsView: UIView {
    
    var keyvalues = [[String: String]]()
    
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
    
    lazy var nameAndDescriptionStack: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [nameLabel, descriptionLabel])
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private lazy var partyKeyLabel = smallGrayLabel()
    
    private lazy var roleKeyLabel = smallGrayLabel()
    
    lazy var partyLabel = label()
    lazy var roleLabel = label()
    
    lazy var partyStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [partyKeyLabel, partyLabel])
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var roleStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [roleKeyLabel, roleLabel])
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var partyAndRoleStack: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [roleStackView, separatorView, partyStackView])
        sv.axis = .horizontal
        sv.spacing = 30
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
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
    
    lazy var addressKeyLabel = smallGrayLabel()
    lazy var addressLabel = label()
    lazy var officeKeyLabel = smallGrayLabel()
    lazy var officeLabel = label()
    lazy var personNameKeyLabel = smallGrayLabel()
    lazy var personNameLabel = label()
    lazy var birthdayKeyLabel = smallGrayLabel()
    lazy var birthdayLabel = label()
    lazy var enddateKeyLabel = smallGrayLabel()
    lazy var endDateLabel = label()
    lazy var genderKeyLabel = smallGrayLabel()
    lazy var genderLabel = label()
    lazy var sortnameKeyLabel = smallGrayLabel()
    lazy var sortnameLabel = label()
    lazy var websiteKeyLabel = smallGrayLabel()
    lazy var websiteLabel = label()
    
    lazy var keyValueLabelsStack: UIStackView = {
        var stacks = [UIStackView]()
        let sv = UIStackView(arrangedSubviews: [
            embedInStackView(addressKeyLabel, addressLabel),
            embedInStackView(officeKeyLabel, officeLabel),
            embedInStackView(birthdayKeyLabel, birthdayLabel),
            embedInStackView(genderKeyLabel, genderLabel),
            embedInStackView(sortnameKeyLabel, sortnameLabel),
            embedInStackView(websiteKeyLabel, websiteLabel)
        ])
        sv.axis = .vertical
        sv.spacing = 16
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = CGSize(width: -3, height: 3)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    convenience init(keyvalues: [[String: String]]) {
        self.init(frame: .zero)
        self.keyvalues = keyvalues
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
        backgroundColor = .white
        setupCardView()
        setupPhotoView()
        setupNameAndDescriptionStack()
        setupPartyAndRoleStack()
        setupButtons()
        setupButtonsStackView()
        setupKeyValueLabels()
    }
    
    private func setupCardView() {
        addSubview(cardView)
        NSLayoutConstraint.activate([
            cardView.heightAnchor.constraint(equalToConstant: 300),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70),
        ])
    }
    
    private func setupPhotoView() {
        addSubview(photoView)
        NSLayoutConstraint.activate([
            photoView.heightAnchor.constraint(equalToConstant: 100),
            photoView.widthAnchor.constraint(equalToConstant: 100),
            photoView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: -50),
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
            separatorView.widthAnchor.constraint(equalToConstant: 0.5)
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
            buttonsStackView.centerXAnchor.constraint(equalTo: cardView.centerXAnchor)
        ])
    }
    
    private func setupKeyValueLabels() {
        addSubview(keyValueLabelsStack)
        NSLayoutConstraint.activate([
            keyValueLabelsStack.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 20),
            keyValueLabelsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            keyValueLabelsStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
    
    private func embedInStackView(_ view1: UIView, _ view2: UIView) -> UIStackView {
        let sv = UIStackView(arrangedSubviews: [view1, view2])
        sv.axis = .vertical
        sv.spacing = 8
        return sv
    }
 
    private func label(
        font: UIFont = UIFont.systemFont(ofSize: 17),
        textColor: UIColor = .black,
        numberOfLines: Int = 0,
        text: String = "",
        textAlignment: NSTextAlignment = .natural
    ) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        label.text = text
        label.textAlignment = textAlignment
        return label
    }
    
    private func smallGrayLabel() -> UILabel {
        label(
            font: UIFont.systemFont(ofSize: 14),
            textColor: .lightGray,
            text: "Party"
        )
    }
    
    private func button(with image: UIImage) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
