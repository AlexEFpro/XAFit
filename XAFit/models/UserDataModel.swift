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
    
    @Published var age: Double = 15
    
    @Published var program : ProgramsandPhyscal.Program = .callistenichs
    
    @Published var sesions : Int
    
    @Published var chestRm : Double
    @Published var backRm : Double
    @Published var bicepRm : Double
    @Published var tricepRm : Double
    @Published var shoulderRm : Double
    @Published var deadLiftRm : Double
    @Published var squatRm : Double
    @Published var quadsRm : Double
    @Published var femoralRm : Double
    @Published var abdRm : Double
    @Published var addRm : Double
    @Published var calfRm : Double
    
    
    @Published var gender: ProgramsandPhyscal.gender = .male
    
    init(weight: Double = 0, height: Double = 0, age: Double = 15 , gender: ProgramsandPhyscal.gender = .male, sesions: Int = 0,chestRm:Double = 0,backRm : Double = 0,bicepRm : Double = 0,tricepRm : Double = 0,shoulderRm : Double = 0,deadLiftRm : Double = 0,squatRm : Double = 0,quadsRm : Double = 0,femoralRm : Double = 0,abdRm : Double = 0,addRm : Double = 0,calfRm : Double = 0 ) {
        self.weight = weight
        self.height = height
        self.age = age
        self.gender = gender
        self.sesions = sesions
        self.chestRm = chestRm
        self.backRm = backRm
        self.bicepRm = bicepRm
        self.tricepRm = tricepRm
        self.shoulderRm = shoulderRm
        self.deadLiftRm = deadLiftRm
        self.squatRm = squatRm
        self.quadsRm = quadsRm
        self.femoralRm = femoralRm
        self.abdRm = abdRm
        self.addRm = addRm
        self.calfRm = calfRm
        
    }
    
    
}
