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
        self.weight = weight
        self.height = height
        self.age = age
        self.gender = ProgramsandPhyscal.gender.male.rawValue
    }
    
    
}
