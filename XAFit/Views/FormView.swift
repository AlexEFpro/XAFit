//
//  FormView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct FormView: View {
    @StateObject var user = UserDataModel()
    var body: some View {
        NavigationStack {
            Form{
                Section{
                    WeightPickerView()
                       
                    
                }
                .scaledToFit()
                Section{
                    HeightPickerView()
                }
                    .scaledToFit()
                Section{
                    HStack{
                        agePicker(userData: user)
                    }
                }
                
            }
            
        }
        
        
       
            
       
                    
           
            
            
       
       
        
        
        
        
        
        
    }
}

#Preview {
    
    FormView(user: UserDataModel(weight: 0, height: 0, age: 15, gender: ProgramsandPhyscal.gender.male))
}
