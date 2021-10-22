//
//  ButtonFormView.swift
//  Chat
//
//  Created by Marina Trufanova on 22.10.2021.
//

import UIKit
import SnapKit

class ButtonFormView: UIView {
    init(label: UILabel, button: UIButton) {
        super.init(frame: .zero)
        self.addSubview(label)
        self.addSubview(button)

        label.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
        }

        button.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(60)
        }

        self.snp.makeConstraints { make in
            make.bottom.equalTo(button.snp.bottom)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
