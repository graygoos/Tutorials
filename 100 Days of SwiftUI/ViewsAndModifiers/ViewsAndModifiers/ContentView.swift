//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Femi Aliu on 17/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Aloha World") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.yellow)
        .padding()
        .background(.red)
        .padding()
        .background(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
