//
//  ContentView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = UserDataModel()
    
   
   
    var body: some View {
        
        
        VStack {
            LogoView()
                
                .font(.title.bold())
            
            
            
            TabMenuView(user: user)
        }
        .navigationTitle("Enter Yor Data")
        
        
    }
}


#Preview {
    ContentView()
}
