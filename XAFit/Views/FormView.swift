//
//  FormView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct FormView: View {
    @EnvironmentObject var user : UserDataModel
    @EnvironmentObject var pr : ProgramsandPhyscal
    @State private var ageSelected : Double = 15
    @State private var genderSelected : ProgramsandPhyscal.gender = .male
    var body: some View {
        NavigationStack {
            Form{
                Section{
                    
                    WeightPickerView()
                        .frame(width: 180, height: 150, alignment: .center)
                 
                    
                }
                .scaledToFit()
                
                Section{
                    HeightPickerView()
                        .frame(width: 180, height: 150, alignment: .center)
                        .scaledToFit()
                }
                .scaledToFit()
                Section{
                    HStack{
                        agePicker(ageSelected: $ageSelected)
                            .padding()
                        genderPicker(genderSelected: $genderSelected)
                        
                    }
                    .frame(height: 200)
                   
                    
                    Section{
                        
                        
                        HStack {
                            
                            NavigationLink(destination: RmTestView()){
                                
                                Button(action: {}) {
                                    Text(" Go to Evaluation")
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
                        .frame(maxWidth: .infinity)
                        
                        
                        
                        
                        
                        
                    }
                    
                }
                
                
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:UserDataModel())
    FormView()
        .environmentObject(user)
        .environmentObject(pr)
}
