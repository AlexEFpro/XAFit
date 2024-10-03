//
//  ContentView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user : UserDataModel
   
    var body: some View {
        
        
        VStack {
            LogoView()
            Text("Enter Your Data")
                .font(.title.bold())
            
            
            
            TabMenuView()
        }
        
        
    }
}


#Preview {
    ContentView(user: UserDataModel(weight: 0, height: 0, age: 15, gender: ProgramsandPhyscal.gender.male))
}
