//
//  TabMenuView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct TabMenuView: View {
   
    
    var body: some View {
        TabView{
            Tab("",systemImage: "person"){
                FormView()
            }
            Tab("",systemImage: "list.bullet.clipboard"){
                EvaluationView()
            }
            Tab("",systemImage: "figure.strengthtraining.traditional"){
                QuickTrainingView()
            }
        }
    }
}

#Preview {
    TabMenuView()
}
