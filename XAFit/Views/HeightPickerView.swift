//
//  HeightPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 01/10/24.
//

import SwiftUI

struct HeightPickerView: View {
    @EnvironmentObject var user : UserDataModel
    
    @StateObject private var heightModel = HeightPickerConfigModel()
    var body: some View {
        WheelPicker(model: heightModel )
            .onChange(of: heightModel.value, initial: true){
                oldValue, newValue in user.height = Double(newValue)
            }
    }
}

#Preview {
    let user = UserDataModel()
    HeightPickerView()
        .environmentObject(user)
}
