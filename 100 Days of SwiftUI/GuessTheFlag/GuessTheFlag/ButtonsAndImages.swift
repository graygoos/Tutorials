//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 21/11/2023.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
//        Button(action: {
//            print("now deleting...")
//        }) {
//            Text("Delete selection")
//        }
        
//        Button("Delete selection") {
//            print("now deleting...")
//        }
        
//        Button("Delete selection", action: executeDelete)
        
//        Button("Button 1") { }
//            .buttonStyle(.bordered)
//        Button("Button 2", role: .destructive) { }
//            .buttonStyle(.bordered)
//        Button("Button 3") { }
//            .buttonStyle(.borderedProminent)
//            .tint(.cyan)
//        Button("Button 4", role: .destructive) { }
//            .buttonStyle(.borderedProminent)
        
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//        }
        
//        Image(systemName: "plus")
        
//        Button {
//            print("Button was tapped")
//        } label: {
//            Image(systemName: "plus")
//        }
        
//        Button("Edit", systemImage: "pencil") {
//            print("Button was tapped")
//        }
        
        Button {
            print("button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
        
    }
    
//    func executeDelete() {
//        print("now deleting...")
//    }
}

#Preview {
    ButtonsAndImages()
}
