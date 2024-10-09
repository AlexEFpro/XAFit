//
//  ContentView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = UserDataModel()
    @StateObject var pr=ProgramsandPhyscal()
    
   
   
    var body: some View {
        
        
        VStack {
            LogoView()
                
                .font(.title.bold())
            
            
            
            TabMenuView(user: user, pr: pr)
        }
        .navigationTitle("Enter Yor Data")
        
        
    }
}


#Preview {
    ContentView( pr: ProgramsandPhyscal())
}
