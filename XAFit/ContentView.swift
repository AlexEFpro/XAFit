//
//  ContentView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    
   
   
    var body: some View {
        
        
        VStack {
            LogoView()
                
                .font(.title.bold())
            
            
            
            TabMenuView()
        }
        .navigationTitle("Enter Yor Data")
        
        
    }
}


#Preview {
    ContentView()
}
