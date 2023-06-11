//
//  LoginViewModel.swift
//  TwiSwift
//
//  Created by Marco Mascorro on 6/11/23.
//

import SwiftUI
import FirebaseAuth


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    
    @Published var tabs: logintab = .login
    
    
    @Published var isSuccess: Bool = false
    
    func performAuthentication(){
        if tabs == .login {
            performLogin()
        } else {
            performRegister()
        }
    }
    
    
    func performLogin() {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            }
            self.isSuccess = true
        }
    }
    
    func performRegister(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            guard let uid = result?.user.uid else { return }
            
            let values = ["email": self.email, "username": self.username.lowercased()]
            
            REF_USERS.child(uid).updateChildValues(values){error, reference in
                if let error = error {
                    print(error.localizedDescription)
                }
                self.isSuccess = true
            }
        }
    }
}
