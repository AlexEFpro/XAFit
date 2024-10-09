//
//  TabMenuView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct TabMenuView: View {
    @ObservedObject var user : UserDataModel
    
    
    var body: some View {
        TabView{
            Tab("",systemImage: "person"){
                FormView( user: user)
            }
            Tab("",systemImage: "list.bullet.clipboard"){
                DashBoardUserView(user:user)
                
            }
            Tab("",systemImage: "figure.strengthtraining.traditional"){
                QuickTrainingView()
            }
        }
    }
}

#Preview {
    TabMenuView(user: UserDataModel())
}
