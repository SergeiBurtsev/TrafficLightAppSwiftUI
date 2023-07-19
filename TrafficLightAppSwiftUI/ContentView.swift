//
//  ContentView.swift
//  TrafficLightAppSwiftUI
//
//  Created by Serj on 19.07.2023.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightOff
            redLightState = lightOn
        case .yellow:
            currentLight = .green
            redLightState = lightOff
            yellowLightState = lightOn
        case .green:
            currentLight = .red
            yellowLightState = lightOff
            greenLightState = lightOn
        }
        
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightUIView(color: .red, opacity: redLightState)
                TrafficLightUIView(color: .yellow, opacity: yellowLightState)
                TrafficLightUIView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeButtonPressed(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
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
