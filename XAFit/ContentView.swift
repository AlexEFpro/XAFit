//
//  ContentView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user : UserDataModel
    
    @EnvironmentObject var pr:ProgramsandPhyscal
    
   
   
    var body: some View {
        
        
        VStack {
            LogoView()
                
                .font(.title.bold())
            
            
            
            TabMenuView()
        }
        
        
        
    }
}


#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:UserDataModel())
    ContentView()
        .environmentObject(user)
        .environmentObject(pr)
}
