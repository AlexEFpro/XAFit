//
//  UserDataModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import Foundation

class UserDataModel : ObservableObject{
    
    @Published var weight: Double
    
    @Published var height: Double
    
    @Published var age: Double
    
    @Published var gender: String
    
    init(weight: Double, height: Double, age: Double, gender: String) {
        self.weight = 0
        self.height = 0
        self.age = 0
        self.gender = ProgramsandPhyscal.gender.male.rawValue
    }
    
    
}
