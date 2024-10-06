//
//  WeightPickerView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import SwiftUI

struct WeightPickerView: View {
    @ObservedObject var user : UserDataModel
    @StateObject private var weightModel = WeightPickerConfigModel()
    var body: some View {
        WheelPicker(model: weightModel)
            .onChange(of: weightModel.value, initial: true) {oldValue , newValue in user.weight = Double(newValue)}
    }
}

#Preview {
    WeightPickerView(user: UserDataModel())
}
