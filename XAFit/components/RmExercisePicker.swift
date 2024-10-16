//
//  RmExercisePicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct RmExercisePicker: View {
    
    @EnvironmentObject var pr : ProgramsandPhyscal
    
    var indexTestExercise :Int
    
    var body: some View {
        
        VStack{
            Text("\(pr.selectedProgram.exercises[indexTestExercise])")
                .font(.title3.bold())
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
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:user)
    RmExercisePicker( indexTestExercise: 1)
        .environmentObject(pr)
}
