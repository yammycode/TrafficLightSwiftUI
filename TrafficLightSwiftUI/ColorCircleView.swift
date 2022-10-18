//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Saltykov on 18.10.2022.
//

import SwiftUI

struct ColorCircleView: View {

    let color: Color
    let isActive: Bool

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .foregroundColor(color)
            .padding(.vertical, 5)
            .opacity(isActive ? 1 : 0.3)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, isActive: true)
    }
}
