//
//  ViewsInLoop.swift
//  WeSplit
//
//  Created by Femi Aliu on 16/11/2023.
//

import SwiftUI

struct ViewsInLoop: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a student")
        }
    }
}

#Preview {
    ViewsInLoop()
}
