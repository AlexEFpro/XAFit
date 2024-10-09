//
//  TabMenuView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct TabMenuView: View {
    @ObservedObject var user : UserDataModel
    @ObservedObject var pr : ProgramsandPhyscal
    
    
    var body: some View {
        TabView{
            Tab("",systemImage: "person"){
                FormView( pr: pr, user: user)
            }
            Tab("",systemImage: "list.bullet.clipboard"){
                DashBoardUserView(user:user, pr: pr)
                
            }
            Tab("",systemImage: "figure.strengthtraining.traditional"){
                QuickTrainingView()
            }
        }
    }
}

#Preview {
    TabMenuView(user: UserDataModel(), pr: ProgramsandPhyscal())
}
