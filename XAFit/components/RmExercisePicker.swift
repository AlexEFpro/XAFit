//
//  RmExercisePicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct RmExercisePicker: View {
    
    @ObservedObject var pr : ProgramsandPhyscal
    var indexTestExercise :Int
    
    var body: some View {
        
        VStack{
            Text("\(pr.selectedProgram.exercises[indexTestExercise])")
                .font(.title2.bold())
                .foregroundStyle(.blue)
            HStack{
                Text("Weight:")
                weightRmPicker()
                Text("Reps")
                repPicker()
            }
        }
        .onAppear{
//            pr.updateTestExercises()
        }
        
        
    }
}

#Preview {
    RmExercisePicker( pr: ProgramsandPhyscal(), indexTestExercise: 1)
}
