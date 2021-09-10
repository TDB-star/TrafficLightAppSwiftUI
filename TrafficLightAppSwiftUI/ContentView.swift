//
//  ContentView.swift
//  TrafficLightAppSwiftUI
//
//  Created by Tatiana Dmitrieva on 07/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ State var buttonText = true
    @ State var color: Color = .red
    @ State private var redLineState = 0.3
    @ State private var yellowLineState = 0.3
    @ State private var greenLineState = 0.3
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ColorCircle(color: .red, opacity: redLineState)
                ColorCircle(color: .yellow, opacity: yellowLineState)
                ColorCircle(color: .green, opacity: greenLineState)
                Spacer()
                Button(action: {
                    buttonText = false
                    switch color {
                    case .red:
                        redLineState = 1
                        yellowLineState = 0.3
                        greenLineState = 0.3
                        color = .yellow
                    case .yellow:
                        redLineState = 0.3
                        yellowLineState = 1
                        greenLineState = 0.3
                        color = .green
                    default:
                        redLineState = 0.3
                        yellowLineState = 0.3
                        greenLineState = 1
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
