//
//  StartSesionButton.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 10/10/24.
//

import SwiftUI

struct StartSesionButton: View {
    @State var workoutStart: Bool = false
    func workoutStarted(){
        print("Workout Started")
    }
    var body: some View {
        Button(action:{workoutStart = true}){
            Text("Start Session")
            
        }
        .buttonStyle(.borderedProminent)
        .font(.largeTitle.bold())
        .alert("READY TO START", isPresented: $workoutStart){
            Button("Yes", action:workoutStarted)
            Button("Cancel", role: .cancel){}
        }
        
    }
    
}
#Preview {
    StartSesionButton()
}
