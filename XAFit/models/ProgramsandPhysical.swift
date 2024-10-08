//
//  ProgramsandPhyscal.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import Foundation
class ProgramsandPhyscal : ObservableObject {
    
    @Published var selectedProgram : Program = .callistenichs
    var indexTestExercise = 0
    var testCurrentExerciseIndex: String{ //exercise
        return selectedProgram.exercises[indexTestExercise]
    }
    
    enum gender : String, CaseIterable, Identifiable{
        case male = "men"
        case female =  "female"
        var id: Self {self}
        
        
    }
    
    enum Program : String, CaseIterable, Identifiable{
        
        case callistenichs = "Callistenichs"
        case gym = "Gym"
        case functional = "Functional"
        
        var id: Self {self}
        var exercises:[String]{
            switch self {
            case .callistenichs:
                return["Push-up","Pull-up","Dip","Chin-up","Pike push-up","Air squats","Dorsal raises","Scissor Lunge","Bridge","Lateral leg-raise", "Back kick", "Calf rise"]
            case.gym:
                return["Bench press", "Lat-pulldown","Cable tricep extensión", "Shoulder press","Squat", "Deadlift","Quads Extension", "Femoral Flexión", "Abduction machine", "Adduction machine","Calf raise"]
            case.functional:
                return["Kb chest-press","Pull-Up","Kb Clean","Kb Shoulder press","Kb front squat", "Kb Deadlift","Kb reverse lunge","Kb hip thrust","Kb side lunge ", "Kb Cossack", "Kb calf rise"]
            }
        }
        
    }
   
    
    
    
    
    
    
}
