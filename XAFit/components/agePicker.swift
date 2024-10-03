//
//  agePicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 01/10/24.
//

import SwiftUI

struct agePicker: View {
    @ObservedObject var userData :  UserDataModel
    var body: some View {
        
            Picker("Age", selection: $userData.age){
                ForEach(15...80, id: \.self){age in Text("\(age)").tag(age)}
        
               
            
        }
        
        
    }
}

#Preview {
    
    agePicker(userData: .init(weight: 0, height: 0, age: 15, gender: ProgramsandPhyscal.gender.male))
}
