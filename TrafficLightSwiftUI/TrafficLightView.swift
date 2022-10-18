//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Saltykov on 18.10.2022.
//

import SwiftUI

struct TrafficLightView: View {

    let activeLight: Light?

    var body: some View {
        ZStack {
            Color(.black)
                .frame(width: 150, height: 380)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            VStack {
                ColorCircleView(color: .red, isActive: activeLight == .red)
                ColorCircleView(color: .yellow, isActive: activeLight == .yellow)
                ColorCircleView(color: .green, isActive: activeLight == .green)
            }
            .padding()
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(activeLight: .red)
    }
}
