//
//  ContentView.swift
//  TrafficLightAppSwiftUI
//
//  Created by Tatiana Dmitrieva on 07/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ State var buttonText = true
    @ State var redCircle = ColorCircle(color: .red, opacity: 0.3)
    @ State var yellowCircle = ColorCircle(color: .yellow, opacity: 0.3)
    @ State var greenCircle = ColorCircle(color: .green, opacity: 0.3)
    @ State var color: Color = .red
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                redCircle
                yellowCircle
                greenCircle
                Spacer()
                Button(action: {
                    buttonText = false
                    switch color {
                    case .red:
                        redCircle = ColorCircle(color:.red, opacity: 1)
                        yellowCircle = ColorCircle(color: .yellow, opacity: 0.3)
                        greenCircle = ColorCircle(color: .green, opacity: 0.3)
                        color = .yellow
                    case .yellow:
                        redCircle = ColorCircle(color: .red, opacity: 0.3)
                        yellowCircle = ColorCircle(color: .yellow, opacity: 1)
                        greenCircle = ColorCircle(color: .green, opacity: 0.3)
                        color = .green
                    default: redCircle = ColorCircle(color: .red, opacity: 0.3)
                        yellowCircle = ColorCircle(color: .yellow, opacity: 0.3)
                        greenCircle = ColorCircle(color: .green, opacity: 1)
                        color = .red
                    }
                })
                {
                    SpecialButton(active: buttonText)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
