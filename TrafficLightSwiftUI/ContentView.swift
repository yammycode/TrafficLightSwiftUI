//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Saltykov on 18.10.2022.
//

import SwiftUI

enum Light {
    case red
    case yellow
    case green
}

struct ContentView: View {

    @State var activeLight: Light?

    var buttonLabel: String {
        activeLight == nil ? "START" : "NEXT"
    }

    var body: some View {
        ZStack {
            Rectangle().fill(.orange.gradient)
            VStack {
                TrafficLightView(activeLight: activeLight)
                Spacer()
                ButtonView(label: buttonLabel, action: setActiveLight)
            }
            .padding(.vertical, 100)
        }
        .ignoresSafeArea()
    }

    private func setActiveLight() {
        switch activeLight {
        case .red:
            activeLight = .yellow
        case .yellow:
            activeLight = .green
        default:
            activeLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
