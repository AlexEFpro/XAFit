//
//  programPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct programPicker: View {
    @State private var selectedProgram: ProgramsandPhyscal.program = .callistenichs
    
    var body: some View {
        Picker("Select your kind of program", selection: $selectedProgram) {
            ForEach(ProgramsandPhyscal.program.allCases, id: \.self) { program in
                Text(program.rawValue)
                    .tag(program)  
            }
        }
    }
}

#Preview {
    programPicker()
}
