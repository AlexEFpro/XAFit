//
//  RmTestView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 30/09/24.
//

import SwiftUI

struct RmTestView: View {
    @ObservedObject var user : UserDataModel
    @ObservedObject var pr : ProgramsandPhyscal
    var body: some View {
        VStack{
            
            TimerView(tm: TimeRmModel())
                .padding()
            
                Form{
                    Section{
                        Text("Perfom each one of the exercises without compromise the technique with a middle weight and register the reps, and weigth, if you select the calisthenics evaluation select yor weight")
                            .font(.callout .bold())
                    }
                        Section{
                            programPicker(user: user)
                            
                        }
                    ScrollView{
                        Section{
                            
                            RmExercisePicker(pr: pr, indexTestExercise:0)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:1)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:2)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:3)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:4)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:5)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:6)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:7)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:8)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:9)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:10)
                            
                            RmExercisePicker(pr: pr, indexTestExercise:11)
                            
                        }
                        
                        
                    }
                    
                }
            
            
         
            
            
            
        }
        .navigationTitle("Evaluation")
        
        
        
    }
}

#Preview {
    RmTestView(user: UserDataModel(), pr: ProgramsandPhyscal())
}
