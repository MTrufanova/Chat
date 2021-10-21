//
//  ViewController.swift
//  Chat
//
//  Created by Marina Trufanova on 21.10.2021.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
    }

}


#if DEBUG
import SwiftUI
struct ContentViewControllerContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = StartViewController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        return StartViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct ContentViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewControllerContainerView().edgesIgnoringSafeArea(.all)
    }
}
#endif
