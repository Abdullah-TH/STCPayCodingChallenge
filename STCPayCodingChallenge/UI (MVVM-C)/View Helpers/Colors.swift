//
//  Colors.swift
//  STCPayCodingChallenge
//
//  Created by Abdullah Althobetey on 13/11/2020.
//

import UIKit

final class Colors {
    
    private init() {}
    
    static let backgroundColor = hexStringToUIColor(hex: "#fbfbfd ")
    static let cardBackgroundColor = hexStringToUIColor(hex: "#ffffff")
    static let primaryText = hexStringToUIColor(hex: "#8b8da1")
    static let seconedaryText = hexStringToUIColor(hex: "#b7b5c1")
}

private func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
