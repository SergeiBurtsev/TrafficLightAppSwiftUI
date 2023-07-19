//
//  ChangeButtonPressed.swift
//  TrafficLightAppSwiftUI
//
//  Created by Serj on 19.07.2023.
//

import SwiftUI

struct ChangeButtonPressed: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 65)
        .background(Color.blue)
        .cornerRadius(25)
    }
}

struct ChangeButtonPressed_Previews: PreviewProvider {
    static var previews: some View {
        ChangeButtonPressed(title: "START", action: {})
    }
}
