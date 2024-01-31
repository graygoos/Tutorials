//
//  ColorsAndFrames.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 21/11/2023.
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("aloha world")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ColorsAndFrames()
}
