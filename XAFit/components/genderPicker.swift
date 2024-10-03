//
//  genderPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 03/10/24.
//

import SwiftUI

struct genderPicker: View {
    @ObservedObject var userData :  UserDataModel
    var body: some View {
        Picker("Gender", selection: $userData.gender){
            ForEach(ProgramsandPhyscal.gender.allCases, id: \.self){gender in Text(gender.rawValue)}
        }
    }
}

#Preview {
    genderPicker(userData: UserDataModel())
}
