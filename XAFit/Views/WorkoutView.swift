//
//  WorkoutView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 08/10/24.
//

import SwiftUI

struct WorkoutView: View {
    @ObservedObject var user: UserDataModel
    var body: some View {
        TimerView(tm: WorkoutCronoModel( user: user))
    }
}

#Preview {
    WorkoutView(user: UserDataModel())
}
