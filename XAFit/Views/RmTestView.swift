//
//  RmTestView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 30/09/24.
//

import SwiftUI

struct RmTestView: View {
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
                            programPicker()
                        }
                    ScrollView{
                        
                    }
                    
                }
            
            
         
            
            
            
        }
        .navigationTitle("Evaluation")
        
        
        
    }
}

#Preview {
    RmTestView()
}
