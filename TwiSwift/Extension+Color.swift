//
//  Extension+Color.swift
//  TwiSwift
//
//  Created by Marco Mascorro on 6/10/23.
//

import SwiftUI

extension Color {
    static func rgb(red: Double, green: Double, blue: Double) -> Color {
        return Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
    }
    
    static let twitterBlue = Color.rgb(red: 29, green: 161, blue: 242)
}
