//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Femi Aliu on 19/07/2023.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.blue)
                .padding(5)
                .background(.orange)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct CustomModifiers: View {
    var body: some View {
        Color.cyan
            .frame(width: 300, height: 200)
            .watermarked(with: "Quiver Listings")
    }
}

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
