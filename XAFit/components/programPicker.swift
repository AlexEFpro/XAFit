//
//  programPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct programPicker: View {
    @EnvironmentObject var pr : ProgramsandPhyscal
    
    
    var body: some View {
        Picker("Select your kind of program", selection: $pr.selectedProgram) {
            ForEach(ProgramsandPhyscal.Program.allCases, id: \.self) { program in
                Text(program.rawValue)
                    .tag(program)  
            }
        }
        
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:user)
    programPicker()
        .environmentObject(user)
        .environmentObject(pr)
}
