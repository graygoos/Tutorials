//
//  ShowingAlertMessages.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 22/11/2023.
//

import SwiftUI

struct ShowingAlertMessages: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
            .alert("important message", isPresented: $showingAlert) {
//                Button("Okay") { }
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Please read this.")
            }
    }
}

#Preview {
    ShowingAlertMessages()
}
