//
//  agePicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 01/10/24.
//

import SwiftUI

struct agePicker: View {
    @Binding var ageSelected :Double
    @EnvironmentObject var user :  UserDataModel
    var body: some View {
        
        Picker("Age", selection: $ageSelected){
                ForEach(15...80, id: \.self){age in Text("\(age)").tag(age)}
        }
            .pickerStyle(WheelPickerStyle())
            .onChange(of: ageSelected, initial: true){oldValue, newValue in user.age = newValue }
        
    }
}

#Preview {
    let user = UserDataModel()
    
    agePicker(ageSelected: .constant(15))
        .environmentObject(user)
}
