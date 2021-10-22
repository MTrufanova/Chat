//
//  UIButton + Extension.swift
//  Chat
//
//  Created by Marina Trufanova on 21.10.2021.
//

import UIKit

extension UIButton {
    convenience init(backgroundColor: UIColor,
                     cornerRadius: CGFloat = 4,
                     isShadow: Bool = false,
                     titleColor: UIColor,
                     title: String,
                     font: UIFont = .avenir20) {
        self.init(type: .system)

        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius

        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}
