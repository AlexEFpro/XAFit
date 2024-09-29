//
//  FormView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct FormView: View {
    @State private var config: WheelPicker.Config = .init(count: 30, steps: 5, multiplier: 10, spacing: 15)
    @State private var value: CGFloat = 0
    
    var body: some View {
        WheelPicker(config:config, value: $value)
            .frame(height: 60)
    }
}

#Preview {
    
    FormView()
}
