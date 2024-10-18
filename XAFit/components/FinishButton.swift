//
//  FinishButton.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 10/10/24.
//

import SwiftUI

struct FinishButton: View {
    
    @EnvironmentObject var user : UserDataModel
    @EnvironmentObject var pr : ProgramsandPhyscal
    
    var body: some View {
        NavigationStack{
            Button( action: {
                pr.workoutsEnds = true
                
                
            })
            {
                Text("Ends Workout")
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title.bold())
           
                .alert("Are you sure to end the session?", isPresented: $pr.workoutsEnds){
                    
                    Button("Yes", action:{pr.countingWorkout(); user.sesions += 1})
                    Button("Cancel", role: .cancel){}
                    
                }
//            NavigationLink(destination: TabMenuView(), isActive: $pr.navigateToDashBoard) {
//                               EmptyView()
//                           }
            
            
            
        }
        }
       
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user: user)
    FinishButton()
        .environmentObject(user)
        .environmentObject(pr)
}
