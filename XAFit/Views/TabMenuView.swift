//
//  TabMenuView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct TabMenuView: View {
    @EnvironmentObject var user : UserDataModel
    @EnvironmentObject var pr : ProgramsandPhyscal
    
    
    var body: some View {
        TabView{
            Tab("",systemImage: "person"){
                FormView()
            }
            Tab("",systemImage: "list.bullet.clipboard"){
                DashBoardUserView()
                   
                
            }
            Tab("",systemImage: "figure.strengthtraining.traditional"){
                WorkoutView()
            }
        }
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:UserDataModel())
    TabMenuView()
        .environmentObject(user)
        .environmentObject(pr)
}
