//
//  ProgramsandPhyscal.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import Foundation
class ProgramsandPhyscal : ObservableObject {
    
    @Published var user : UserDataModel
    init(user:UserDataModel, chestWeight:Double = 0,chestReps:Double = 0,backWeight:Double = 0,backReps:Double = 0,bicepWeight:Double = 0,bicepReps:Double = 0,tricepWeight:Double = 0,tricepReps:Double = 0,shoulderWeight:Double = 0,shoulderReps:Double = 0,deadLiftWeight:Double = 0,deadLiftReps:Double = 0,quadsWeight:Double = 0,quadsReps:Double = 0,femoralWeight:Double = 0,femoralReps:Double = 0,squatWeight:Double = 0,squatReps:Double = 0,calfWeight:Double = 0,calfReps:Double = 0,abdWeight:Double = 0,abdReps:Double = 0,addWeight:Double = 0,addReps:Double = 0){
        self.user = user
        self.chestWeight = chestWeight
        self.chestReps = chestReps
        self.backWeight = backWeight
        self.backReps = backReps
        self.bicepWeight = bicepWeight
        self.bicepReps = bicepReps
        self.tricepWeight = tricepWeight
        self.tricepReps = tricepReps
        self.shoulderWeight = shoulderWeight
        self.shoulderReps = shoulderReps
        self.deadLiftWeight = deadLiftWeight
        self.deadLiftReps = deadLiftReps
        self.quadsWeight = quadsWeight
        self.quadsReps = quadsReps
        self.femoralWeight = femoralWeight
        self.femoralReps = femoralReps
        self.squatWeight = squatWeight
        self.squatReps = squatReps
        self.calfWeight = calfWeight
        self.calfReps = calfReps
        self.abdWeight = abdWeight
        self.abdReps = abdReps
        self.addWeight = addWeight
        self.addReps = addReps
        
    }
    
    @Published var selectedProgram : Program = .callistenichs{
        didSet{
            updateTestExercises()
        }
    }
    @Published var selectedSegment : Program.SegmentsPhaseI = .FullBody
    
    @Published var indexTestExercise = 0
    //Rms propertys
    //Chest
    @Published var chestWeight:Double
    @Published var chestReps:Double
    //back
    @Published var backWeight:Double
    @Published var backReps:Double
    //bicep
    @Published var bicepWeight:Double
    @Published var bicepReps:Double
    //tricep
    @Published var tricepWeight:Double
    @Published var tricepReps:Double
    //shoulder
    @Published var shoulderWeight:Double
    @Published var shoulderReps:Double
    //deadLift
    @Published var deadLiftWeight:Double
    @Published var deadLiftReps:Double
    //quads
    @Published var quadsWeight:Double
    @Published var quadsReps:Double
    //femoral
    @Published var femoralWeight:Double
    @Published var femoralReps:Double
    //squat
    @Published var squatWeight:Double
    @Published var squatReps:Double
    //calf
    @Published var calfWeight:Double
    @Published var calfReps:Double
    //abd
    @Published var abdWeight:Double
    @Published var abdReps:Double
    //add
    @Published var addWeight:Double
    @Published var addReps:Double
    
    func rmCalc(){
        user.chestRm = (chestWeight*0.025)*chestReps+chestWeight
        
        user.backRm = (backWeight*0.025)*backReps+backWeight
        
        user.shoulderRm = (shoulderWeight*0.025)*shoulderReps+shoulderWeight
        
        user.bicepRm = (bicepWeight*0.025)*bicepReps+bicepWeight
        
        user.tricepRm = (tricepWeight*0.025)*tricepReps+tricepWeight
        
        user.squatRm = (squatWeight*0.025)*squatReps+squatWeight
        
        user.quadsRm = (quadsWeight*0.025)*quadsReps+quadsWeight
        
        user.femoralRm = (femoralWeight*0.025)*femoralReps+femoralWeight
        
        user.deadLiftRm = (deadLiftWeight*0.025)*deadLiftReps+deadLiftWeight
        
        user.abdRm = (abdWeight*0.025)*abdReps+abdWeight
        
        user.addRm = (addWeight*0.025)*addReps+addWeight
        
        user.calfRm = (calfWeight*0.025)*calfReps+calfWeight
        
    }
    
    
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
        enum SegmentsPhaseI: String, CaseIterable, Identifiable{
            case Squat
            case Push
            case Pull
            case FullBody
            var id: Self{self}
        }
        func segmentExercise(for kind: SegmentsPhaseI)->[String]{
            switch(self,kind){
                //Calisthenic
            case(.callistenichs,.Squat): return ["Jump-Squat","Scissors-lunge","Pistol","Double-Dorsal","Lateral-rise","kick back","Calf-rise"]
            case(.callistenichs,.Push): return ["Push-up","Elevated Pushup","Plank","Half Dip","Pike","Inverse fly","ABS L push"]
            case(.callistenichs,.Pull): return["Pull-up","Austalian Pull-up","Explosive pull-up","Chin-up","Skull crasher","Hang leg Rises","Oblique hag leg rise"]
            case(.callistenichs,.FullBody):return["Australian Pull-up","Push-up","Chin-up","Half Dip","Air Squat","Bridge","Abs-Scissors"]
                //Gym
            case(.gym,.Squat): return ["Squat","Deadlift","Smith Lunge","Bar Hip-thrust","Calf-Rise","Hang leg Rises"]
            case(.gym,.Push):return["Bench Press","Fly","Db Shoulder Press","Inverse Fly","French Press","Cable Tricep extension"]
            case(.gym,.Pull): return ["Pull-up","Opened row bar","Dumbell Row closed","Bicep´s Curl Bar", "Bicep´s Cable Curl","Sh Lateral dumbell rise","Sh frontal dumbell rise"]
            case(.gym,.FullBody):return["Front Squat", "Deadlift","Lat Pulldown","Dumbell Chest-Press","Shoulder Press","Bicep´s Curl Bar","French Press"]
                //Functional
            case(.functional,.Squat): return["Globet squat","Clean Squat","Pistol","Deadlift","Kb Hip-Trusth","Calf rise","Leg rise"]
            case(.functional,.Push): return["Kb Chest-press","Kb Push-up","Kb French-Press","Dips bar","Jerk","Snatch","Knees to elbows"]
            case(.functional,.Pull): return["KB Opened row","Closed Row","Kb High Pull","American swing","Kb Bicep Curl","Kb hammer bicep curl","Kb treadmill"]
            case(.functional,.FullBody): return["Man maker","Devil press","Burpee","Snatch","Treadmill","On Knees Bridge Halo","Hands to Feets"]
                
            }
            
        }
        
        
    }
    
}











