//
//  ColorCircle.swift
//  TrafficLightAppSwiftUI
//
//  Created by Tatiana Dmitrieva on 07/09/2021.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100, alignment: .center)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .blue, opacity: 1.0)
    }
}
 
