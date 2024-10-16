//
//  WeightPickerView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import SwiftUI

struct WeightPickerView: View {
    @EnvironmentObject var user : UserDataModel
    
    @StateObject private var weightModel = WeightPickerConfigModel()
    
    var body: some View {
        WheelPicker(model: weightModel)
            .frame(width: 200, height: 150, alignment: .center)
            .onChange(of: weightModel.value, initial: true) {oldValue , newValue in user.weight = Double(newValue)}
    }
}

#Preview {
    let user = UserDataModel()
        
    WeightPickerView()
        .environmentObject(user)
}
