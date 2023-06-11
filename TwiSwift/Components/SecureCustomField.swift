//
//  SecureCustomField.swift
//  Instagram
//
//  Created by Marco Mascorro on 6/9/23.
//

import SwiftUI

struct SecureCustomField: View {
    let title: String
    @Binding var text: String
    var body: some View {
        ZStack {
            
            SecureField(title, text: $text)
               
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .overlay {
            ZStack(alignment: .topLeading) {
                
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white)
                
                Text(title)
                    .font(.caption)
                    .padding(.horizontal, 5)
                    .background(Color.twitterBlue)
        
                    .offset(x: 20, y: -8)
            }
        }
        .padding()
    }
}

struct SecureCustomField_Previews: PreviewProvider {
    static var previews: some View {
        SecureCustomField(title: "Password", text: .constant(""))
    }
}
