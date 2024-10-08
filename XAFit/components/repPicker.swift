//
//  repPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import SwiftUI

struct repPicker: View {
    @State var repsSelected : Double = 0
    var body: some View {
        Picker("Reps", selection: $repsSelected) {
            ForEach(0...50, id: \.self) { reps in
                Text("\(reps)")
                    .tag(Double(reps))  //
            }
        }
    }
    
}

#Preview {
    repPicker()
}
