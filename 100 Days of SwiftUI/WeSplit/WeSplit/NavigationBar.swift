//
//  NavigationBar.swift
//  WeSplit
//
//  Created by Femi Aliu on 15/11/2023.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hi")
                }
                Section {
                    Text("Hi")
                    Text("Hi")
                }
                Section {
                    Text("Hi")
                    Text("Hi")
                    Text("Hi")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationBar()
}
