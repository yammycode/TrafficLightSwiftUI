//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Saltykov on 18.10.2022.
//

import SwiftUI

struct ButtonView: View {

    let label: String
    let action: () -> ()

    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .foregroundColor(.white)
                .font(.title)
        }
        .padding(EdgeInsets(top: 15, leading: 40, bottom: 15, trailing: 40))
        .background(.blue)
        .cornerRadius(25)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(label: "CLICK") {
            //
        }
    }
}
