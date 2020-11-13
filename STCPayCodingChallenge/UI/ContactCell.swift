//
//  ContactCell.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class ContactCell: UITableViewCell {
    
    static let reuseIdentifier = "ContactCell"
    
    lazy var containerView: UIView = {
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
    
    lazy var photoView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 22
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var partyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    lazy var labelsStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [nameLabel, partyLabel, descriptionLabel])
        sv.axis = .vertical
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    convenience init() {
        self.init(style: .default, reuseIdentifier: Self.reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        setupContainerView()
        setupPhotoView()
        setupLabelsStackView()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    private func setupPhotoView() {
        containerView.addSubview(photoView)
        NSLayoutConstraint.activate([
            photoView.widthAnchor.constraint(equalToConstant: 44),
            photoView.heightAnchor.constraint(equalToConstant: 44),
            photoView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            photoView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
    }
    
    private func setupLabelsStackView() {
        containerView.addSubview(labelsStackView)
        NSLayoutConstraint.activate([
            labelsStackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            labelsStackView.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 16),
            labelsStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 16)
        ])
    }
}
