//
//  ProgramsandPhyscal.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import Foundation
class ProgramsandPhyscal : ObservableObject {
    
    @Published var selectedProgram : Program = .callistenichs{
        didSet{
            updateTestExercises()
        }
    }
    
    @Published var indexTestExercise = 0
    var testCurrentExerciseIndex: String{ //exercise
        return selectedProgram.exercises[indexTestExercise]
    }
    func updateTestExercises(){
        indexTestExercise = 0
        
    }
    //control display functions
    
    func nextExercise(){
        if indexTestExercise < selectedProgram.exercises.count - 1{
            indexTestExercise += 1
        }
    }
    func previusExercise(){
        if indexTestExercise > 0 {indexTestExercise -= 1}
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
                return["Bench press", "Lat-pulldown","Cable tricep extensión","Barbell biceps curl", "Shoulder press","Squat", "Deadlift","Quads Extension", "Femoral Flexión", "Abduction machine", "Adduction machine","Calf raise"]
            case.functional:
                return["Kb chest-press","Pull-Up","Kb French press","Kb Clean","Kb Shoulder press","Kb front squat", "Kb Deadlift","Kb reverse lunge","Kb hip thrust","Kb side lunge ", "Kb Cossack", "Kb calf rise"]
            }
        }
        
    }
   
    
    
    
    
    
    
}
