//
//  weightRmPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct weightRmPicker: View {
    @State var rmWeightSelected: Double = 0
    var body: some View {
        Picker("Weight", selection: $rmWeightSelected) {
            ForEach(0...200, id: \.self) { weight in
                Text("\(weight)")
                    .tag(Double(weight))  //
            }
        }
    }
}

#Preview {
    weightRmPicker()
}
