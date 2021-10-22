//
//  AuthViewController.swift
//  Chat
//
//  Created by Marina Trufanova on 21.10.2021.
//

import UIKit
import SnapKit

class AuthViewController: UIViewController {

    let logoImageView = UIImageView(image: .logoImage, contentMode: .scaleAspectFit)

    lazy var googleLabel = UILabel(text: "Get started with")
    lazy var emailLabel = UILabel(text: "Or sign up with")
    lazy var alreadyOnboardLabel = UILabel(text: "Already onboard?")

    lazy var googleButton = UIButton(backgroundColor: .white, isShadow: true, titleColor: .black, title: "Google")
    lazy var emailButton = UIButton(backgroundColor: .blackColor, titleColor: .white, title: "Email")
    lazy var loginButton = UIButton(backgroundColor: .white, isShadow: true, titleColor: .vineColor, title: "Login")

    lazy var googleView = ButtonFormView(label: googleLabel, button: googleButton)
    lazy var emailView = ButtonFormView(label: emailLabel, button: emailButton)
    lazy var loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
    lazy var stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }

    private func setupLayout() {
        view.addSubview(logoImageView)
        view.addSubview(stackView)

        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
        }

        stackView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(160)
            make.leading.trailing.equalToSuperview().inset(40)
        }
    }


}

// MARK: - SwiftUI Content preview
#if DEBUG
import SwiftUI
struct ContentViewControllerContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = AuthViewController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        return AuthViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct ContentViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewControllerContainerView().edgesIgnoringSafeArea(.all)
    }
}
#endif
