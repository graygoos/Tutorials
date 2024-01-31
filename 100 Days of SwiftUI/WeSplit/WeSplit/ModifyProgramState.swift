//
//  ModifyProgramState.swift
//  WeSplit
//
//  Created by Femi Aliu on 15/11/2023.
//

import SwiftUI

struct ModifyProgramState: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = ""
    
    var body: some View {
        Form {
            ForEach(0..<19) {
                Text("Row \($0)")
            }
        }
    }
}

#Preview {
    ModifyProgramState()
}

/*
 @State is used for simple properties that are stored in one view
 */
