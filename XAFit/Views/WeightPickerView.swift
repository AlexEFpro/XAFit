//
//  WeightPickerView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import SwiftUI

struct WeightPickerView: View {
    @StateObject private var weightModel = WeightPickerConfigModel()
    var body: some View {
        WheelPicker(model: weightModel)
    }
}

#Preview {
    WeightPickerView()
}
