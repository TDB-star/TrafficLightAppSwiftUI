//
//  Button.swift
//  TrafficLightAppSwiftUI
//
//  Created by Tatiana Dmitrieva on 09/09/2021.
//

import SwiftUI
struct SpecialButtonn: View {
    
    var active = false
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text (active ? "START" : "NEXT" )
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        padding()
            .frame(width: 150, height: 55)
            .background(Color.blue)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.white, lineWidth: 4))
    }
}
// Custom Button 
