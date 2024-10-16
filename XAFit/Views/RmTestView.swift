//
//  RmTestView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 30/09/24.
//

import SwiftUI

struct RmTestView: View {
    @EnvironmentObject var user : UserDataModel
    @EnvironmentObject var pr : ProgramsandPhyscal
    var body: some View {
        VStack{
            VStack{
                TimerView(tm: TimeRmModel())
                   
                ExerciseDisplay()
            }
            
            
            
                Form{
                    Section{
                        Text("Perfom each one of the exercises without compromise the technique with a middle weight and register the reps, and weigth, if you select the calisthenics evaluation select yor weight")
                            .font(.body .bold())
                    }
                        Section{
                            programPicker()
                            
                        }
                    ScrollView{
                        Section{
                            
                            RmExercisePicker(indexTestExercise:0)
                            
                            RmExercisePicker(indexTestExercise:1)
                            
                            RmExercisePicker(indexTestExercise:2)
                            
                            RmExercisePicker(indexTestExercise:3)
                            
                            RmExercisePicker(indexTestExercise:4)
                            
                            RmExercisePicker(indexTestExercise:5)
                            
                            RmExercisePicker(indexTestExercise:6)
                            
                            RmExercisePicker(indexTestExercise:7)
                            
                            RmExercisePicker(indexTestExercise:8)
                            
                            RmExercisePicker(indexTestExercise:9)
                            
                            RmExercisePicker(indexTestExercise:10)
                            
                            RmExercisePicker(indexTestExercise:11)
                            
                        }
                        
                        
                    }
                    .padding()
                    
                    
                    NavigationLink(destination: WorkoutView() ){
                        
                        Button(action: {}) {
                            Text("Let´s Workout ")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }
                        
                        
                    }
                    
                }
            
            
         
            
            
            
        }
       
        
        
        
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:UserDataModel())
    RmTestView()
        .environmentObject(user)
        .environmentObject(pr)
}
