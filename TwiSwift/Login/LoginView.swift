//
//  ContentView.swift
//  TwiSwift
//
//  Created by Marco Mascorro on 6/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var lvm = LoginViewModel()
   
    var body: some View {
        ZStack {
            Color.twitterBlue.ignoresSafeArea()
            
            VStack {
                Image("TwitterLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                
                HStack {
                    VStack {
                        Text("Login")
                        Rectangle()
                            .foregroundColor(lvm.tabs == .login ? .white : .clear)
                            .frame(height: 2)
                        
                    }
                    .onTapGesture {
                        lvm.tabs = .login
                    }
                    .padding(.horizontal,35)
                    
                    VStack {
                        Text("Register")
                        Rectangle()
                            .foregroundColor(lvm.tabs == .register ? .white : .clear)
                            .frame(height: 2)
                        
                    }
                    .onTapGesture {
                        lvm.tabs = .register
                    }
                    .padding(.horizontal,35)
                    
                }
                
                if lvm.tabs == .login {
                    Custom_Field(title: "Email", text: $lvm.email)
                    
                    SecureCustomField(title: "Password", text: $lvm.password )

                } else {
                    Custom_Field(title: "Username", text: $lvm.username)
                    Custom_Field(title: "Email", text: $lvm.email)
                    
                    SecureCustomField(title: "Password", text: $lvm.password)
                }
                
                Button(action: { lvm.performAuthentication() }) {
                    Text(lvm.tabs == .login ? "Login" : "Register")
                        .foregroundColor(.twitterBlue)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding()
                        
                      
                }
                Spacer()
                
            }
        }
        .foregroundColor(.white)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


enum logintab {
    case login, register
}
