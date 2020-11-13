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
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    lazy var nameAndDescriptionStack: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [nameLabel, descriptionLabel])
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private lazy var partyKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.text = "Party"
        label.textColor = .gray
        return label
    }()
    
    private lazy var roleKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.text = "Role"
        label.textColor = .gray
        return label
    }()
    
    lazy var partyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var roleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
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
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "email"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var phoneButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "phone"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var speakButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "speak"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonsStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [emailButton, phoneButton, speakButton])
        sv.axis = .horizontal
        sv.spacing = 40
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var addressKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Address"
        return label
    }()
    
    lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var officeKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Office"
        return label
    }()
    
    lazy var officeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var personNameKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Name"
        return label
    }()
    
    lazy var personNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var birthdayKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Birthday"
        return label
    }()
    
    lazy var birthdayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var endDateKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "End Date"
        return label
    }()
    
    lazy var endDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var genderKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Gender"
        return label
    }()
    
    lazy var genderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var sortnameKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Sortname"
        return label
    }()
    
    lazy var sortnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var websiteKeyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.text = "Website "
        return label
    }()
    
    lazy var websiteLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
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
    
    private func createKeyValueLabelsInStack(key: String, value: String) -> UIStackView {
        let keyLabel = UILabel()
        keyLabel.font = UIFont.systemFont(ofSize: 14)
        keyLabel.text = key
        keyLabel.textColor = .gray
        
        let valueLabel = UILabel()
        valueLabel.text = value
        valueLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        let sv = UIStackView(arrangedSubviews: [keyLabel, valueLabel])
        sv.axis = .vertical
        sv.spacing = 8
        return sv
    }
    
}
