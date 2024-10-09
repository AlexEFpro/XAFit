//
//  DashBoardUserView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 09/10/24.
//

import SwiftUI

struct DashBoardUserView: View {
    @ObservedObject var user: UserDataModel
    var body: some View {
        Form{
            Section{
                Text("Name: Name")
                Text("ss")
            }
            Section{}
            Section{}
            
            
        }
        
    }
}

#Preview {
    DashBoardUserView(user: UserDataModel())
}
