//
//  genderPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 03/10/24.
//

import SwiftUI

struct genderPicker: View {
    @Binding var genderSelected : ProgramsandPhyscal.gender
    @ObservedObject var user :  UserDataModel
    var body: some View {
        Picker("Gender", selection: $genderSelected){
            ForEach(ProgramsandPhyscal.gender.allCases, id: \.self){gender in Text(gender.rawValue)}
        }
        .onChange(of: genderSelected, initial: true){oldValue, newValue in user.gender = newValue}
    }
}

#Preview {
    genderPicker(genderSelected: .constant(.male), user : UserDataModel(age: 0, gender: .male))
}
