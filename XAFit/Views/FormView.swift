//
//  FormView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct FormView: View {
   
    
    
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
                
                
            }
            
        }
        
        
       
            
       
                    
           
            
            
       
       
        
        
        
        
        
        
    }
}

#Preview {
    
    FormView()
}
