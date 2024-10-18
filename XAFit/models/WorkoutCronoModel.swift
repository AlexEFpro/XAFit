//
//  WorkoutCronoModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 09/10/24.
//

import Foundation

class WorkoutCronoModel: CronoProtocol, ObservableObject{
    @Published var user : UserDataModel
    
    
    internal var timer : Timer?
    @Published var displayValue: Double
    
    @Published var restValue : Double
    
    @Published var showValue: Bool
    
    @Published var value: Double
    
    @Published var displayDigits: Double
    
    @Published var setTime: Double
    
    
    
    @Published var isPaused: Bool
    
    @Published var isResting: Bool
    
    @Published var sets: Int
    
    @Published var workoutFinished: Bool
    @Published var showAlert : Bool
    
    init(displayValue: Double = 0.0, showValue: Bool = false, value: Double = 1.0, displayDigits: Double = 0.0, setTime: Double = 50 ,  isPaused: Bool = false, isResting: Bool = false, sets: Int = 0, user: UserDataModel, workoutFinished: Bool = false, restValue: Double = 0.0, showAlert: Bool = false) {
        self.displayValue = displayValue
        self.showValue = showValue
        self.value = value
        self.displayDigits = displayDigits
        self.setTime = setTime
        
        self.isPaused = isPaused
        self.isResting = isResting
        self.sets = sets
        self.user = user
        self.workoutFinished = workoutFinished
        self.restValue = restValue
        self.showAlert = showAlert
        
    }
    
    func startTimer() {
        guard timer == nil else { return }
        if !isPaused && !showValue { // Si no está pausado, reiniciamos
            showValue=true
        }
        
        if showValue {
            // Invalida el temporizador anterior, si lo hay
            timer?.invalidate()
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
                guard let self = self else {
                    timer.invalidate()
                    return
                }
                
                if !self.isPaused && self.showValue {
                    if self.displayValue < 1.0 {
                        self.displayValue += 1.0 / self.setTime
                        self.displayDigits = self.displayValue * self.setTime
                    } else {
                        showValue = false
                        displayDigits = 0.0
                        countingSets()
                        timer.invalidate()
                    }
                }
            }
        }
    }
    
    func stopTimer() {
        showValue = false
        isPaused = false
        isResting = false
        timer?.invalidate()
        timer = nil
        displayValue = 0.0
        displayDigits = 0.0
        restValue = 0.0
        sets = 0
        
        
    }
    
    func resumeTimer() {
        isPaused = false
        startTimer() // Retomar el temporizador
    }
    
    func pauseTimer() {
        isPaused = true // Pausar sin modificar showValue
        timer?.invalidate() // Detener temporalmente el temporizador
    }
    func startRestingTimer() {
        timer?.invalidate() // Invalida cualquier temporizador anterior
        timer = nil
        restValue = 0.0
        displayDigits = setTime
       
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            guard let self = self else {
                timer.invalidate()
                return
            }
            
            if self.restValue < 1.0 {
                self.restValue += 1.0 / self.setTime
                self.displayDigits = self.restValue*self.setTime
            } else {
                self.isResting = false
                self.displayDigits = 0.0 // Restablece `displayDigits` después del descanso
                timer.invalidate()
                self.startTimer()
            }
        }
    }
    
    func countingSets() {
            if displayValue >= 1.0 {
                sets += 1
                isResting = true
                
                // Mostrar alerta si sets llega a 4
                if sets >= 4 {
                    showAlert = true
                    stopTimer()
                } else {
                    startRestingTimer()
                }
            }
        }
    
    func countingWorkout(){
        if workoutFinished == true{
            user.sesions += 1
        }
    }
    
    
}
