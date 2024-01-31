//
//  BindingState2UIControls.swift
//  WeSplit
//
//  Created by Femi Aliu on 15/11/2023.
//

import SwiftUI

struct BindingState2UIControls: View {
    @State var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

#Preview {
    BindingState2UIControls()
}
