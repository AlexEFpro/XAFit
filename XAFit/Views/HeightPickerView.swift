//
//  HeightPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 01/10/24.
//

import SwiftUI

struct HeightPickerView: View {
    @StateObject private var heightModel = HeightPickerConfigModel()
    var body: some View {
        WheelPicker(model: heightModel )
    }
}

#Preview {
    HeightPickerView()
}
