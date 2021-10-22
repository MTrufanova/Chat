//
//  UIImageView + Extension.swift
//  Chat
//
//  Created by Marina Trufanova on 21.10.2021.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
