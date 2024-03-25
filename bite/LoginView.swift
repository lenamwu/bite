//
//  LoginView.swift
//  bite
//
//  Created by Lena Wu on 3/25/24.
//

import Foundation
import SwiftUI

struct LoginView: UIViewControllerRepresentable {
    @EnvironmentObject var authViewModel: AuthViewModel

    func makeUIViewController(context: Context) -> UIViewController {
        let loginVC = LoginViewController()
        loginVC.authViewModel = authViewModel
        return loginVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
