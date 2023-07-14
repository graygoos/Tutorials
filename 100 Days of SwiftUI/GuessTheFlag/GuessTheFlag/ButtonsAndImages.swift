//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Femi Aliu on 14/07/2023.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
        Button {
            print("Edit button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
    }
    
    func executeDelete() {
        print("now deleting")
    }
}

struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
