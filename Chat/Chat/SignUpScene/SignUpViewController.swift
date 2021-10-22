//
//  SignUpViewController.swift
//  Chat
//
//  Created by Marina Trufanova on 22.10.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }
    


}

// MARK: - SwiftUI Content preview
#if DEBUG
import SwiftUI
struct SignUpViewControllerContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SignUpViewController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        return SignUpViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct SignUpViewController_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewControllerContainerView().edgesIgnoringSafeArea(.all)
    }
}
#endif
