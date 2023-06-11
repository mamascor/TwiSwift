//
//  Custom_Field.swift
//  Instagram
//
//  Created by Marco Mascorro on 6/9/23.
//

import SwiftUI

struct Custom_Field: View {
    let title: String
    @Binding var text: String
    var body: some View {
        ZStack {
            
            TextField(title, text: $text)
                .foregroundColor(.white)
               
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .overlay {
            ZStack(alignment: .topLeading) {
                
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white)
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.caption)
                    .padding(.horizontal, 5)
                    .background(Color.twitterBlue)
        
                    .offset(x: 20, y: -8)
            }
        }
        .padding()
    }
}

struct Custom_Field_Previews: PreviewProvider {
    static var previews: some View {
        Custom_Field(title: "Email Address", text: .constant(""))
    }
}
