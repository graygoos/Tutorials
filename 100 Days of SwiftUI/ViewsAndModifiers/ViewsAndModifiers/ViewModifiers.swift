//
//  ViewModifiers.swift
//  ViewsAndModifiers
//
//  Created by Femi Aliu on 19/07/2023.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
//            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ViewModifiers: View {
    
    var body: some View {
        VStack {
            CapsuleText(text: "First")
                .foregroundColor(.white)
            CapsuleText(text: "Last One")
                .foregroundColor(.red)
        }
    }
}

struct ViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifiers()
    }
}
