//
//  Button.swift
//  TrafficLightAppSwiftUI
//
//  Created by Tatiana Dmitrieva on 07/09/2021.
//

import SwiftUI

struct SpecialButton: View {
    
    var active = false
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.white ,lineWidth: 4))
                .frame(width: 150, height: 55)
                .foregroundColor(.blue)
                
            
            if active {
                Text("START")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            } else {
                Text("NEXT")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
    
    struct SpecialButton_Previews: PreviewProvider {
        static var previews: some View {
            SpecialButton()
        }
    }
}

