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
                            .padding()
                        genderPicker(userData: user)
                        
                    }
                }
                
                
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    
    FormView()
}
