//
//  TrafficLightUIView.swift
//  TrafficLightAppSwiftUI
//
//  Created by Serj on 19.07.2023.
//

import SwiftUI

struct TrafficLightUIView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white ,lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightUIView(color: .red, opacity: 1)
    }
}
