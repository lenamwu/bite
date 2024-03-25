//
//  biteApp.swift
//  bite
//  
//  Created by Lena Wu on 3/24/24.
//

import SwiftUI

@main
struct biteApp: App {
    @StateObject var authViewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            if authViewModel.isAuthenticated {
                DashboardView()
            } else {
                // will fix w apple developer account: LoginView().environmentObject(authViewModel)
                // Temporary view with a button to simulate authentication
                                VStack {
                                    Button("Sign In (Mock)") {
                                        authViewModel.isAuthenticated = true
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                                }
            }
        }
    }
}

