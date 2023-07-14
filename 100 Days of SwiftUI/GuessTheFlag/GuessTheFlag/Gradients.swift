//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 14/07/2023.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            .ignoresSafeArea()
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
