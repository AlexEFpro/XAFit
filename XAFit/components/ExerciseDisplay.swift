//
//  ExerciseDisplay.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 08/10/24.
//

import SwiftUI

struct ExerciseDisplay: View {
    @EnvironmentObject var pr:ProgramsandPhyscal
    
    var body: some View {
        HStack {
            Button("", systemImage: "lessthan", action: pr.previusExercise)
                .font(.title2.bold())
                .foregroundStyle(.blue)
                
                
            Text("\(pr.selectedProgram.exercises[pr.indexTestExercise])")
                .font(.title2.bold())
                .foregroundStyle(.blue)
            
            Button("", systemImage: "greaterthan", action: pr.nextExercise)
                .font(.title2.bold())
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user: user)
    ExerciseDisplay()
        .environmentObject(pr)
}
