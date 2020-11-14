//
//  ReusableViewFactories.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 14/11/2020.
//

import UIKit

func label(
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

func smallGrayLabel(text: String) -> UILabel {
    label(
        font: UIFont.systemFont(ofSize: 14),
        textColor: Colors.seconedaryText,
        text: text
    )
}

func button(with image: UIImage) -> UIButton {
    let button = UIButton()
    button.setImage(image, for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
}

func stackView(
    axis: NSLayoutConstraint.Axis = .vertical,
    spacing: CGFloat = 8,
    views: [UIView]
) -> UIStackView {
    let sv = UIStackView(arrangedSubviews: views)
    sv.axis = axis
    sv.spacing = spacing
    sv.translatesAutoresizingMaskIntoConstraints = false
    return sv
}
