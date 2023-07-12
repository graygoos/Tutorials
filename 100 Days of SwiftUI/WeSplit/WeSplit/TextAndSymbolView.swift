//
//  TextAndSymbolView.swift
//  WeSplit
//
//  Created by Femi Aliu on 12/07/2023.
//

import SwiftUI

struct TextAndSymbolView: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .imageScale(.large)
                .font(.headline)
                .foregroundColor(.accentColor)
            Text("Aloha, world!")
                .foregroundColor(.brown)
        }
    }
}

struct TextAndSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndSymbolView()
    }
}
