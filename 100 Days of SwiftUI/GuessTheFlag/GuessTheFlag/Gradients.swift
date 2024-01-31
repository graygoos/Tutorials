//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 21/11/2023.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
//        LinearGradient(colors: [.white, .black, .yellow, .green, .gray, .cyan, .teal], startPoint: .top, endPoint: .bottom)
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
//        AngularGradient(colors: [.red, .yellow, .green, .yellow, .purple, .red], center: .center)
//            .ignoresSafeArea()
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.blue.gradient)
    }
}

#Preview {
    Gradients()
}
