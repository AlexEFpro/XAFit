//
//  FormView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct FormView: View {
    @ObservedObject var pr : ProgramsandPhyscal
    @ObservedObject var user : UserDataModel
    @State private var ageSelected : Double = 15
    @State private var genderSelected : ProgramsandPhyscal.gender = .male
    var body: some View {
        NavigationStack {
            Form{
                Section{
                    
                    WeightPickerView(user: user)
                        .frame(width: 180, height: 150, alignment: .center)
                 
                    
                }
                .scaledToFit()
                
                Section{
                    HeightPickerView(user: user)
                        .frame(width: 180, height: 150, alignment: .center)
                        .scaledToFit()
                }
                .scaledToFit()
                Section{
                    HStack{
                        agePicker(ageSelected: $ageSelected, user: user)
                            .padding()
                        genderPicker(genderSelected: $genderSelected, user: user)
                        
                    }
                    .frame(height: 200)
                   
                    
                    Section{
                        
                        
                        HStack {
                            
                            NavigationLink(destination: RmTestView(user: user, pr: pr)){
                                
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
    
    FormView(pr: ProgramsandPhyscal(), user: UserDataModel())
}
