//
//  TimeRmModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 06/10/24.
//

import Foundation

class
TimeRmModel: ObservableObject, CronoProtocol{
    @Published var showAlert: Bool
    
    
    @Published var isPaused: Bool
    
    internal var timer: Timer?
    
    @Published var setTime: Double
    // time of sets
    @Published var displayValue : Double
    
    @Published var showValue : Bool
    
    @Published var restValue: Double
    
    @Published var value : Double
    
    @Published var displayDigits : Double
    
    @Published var sets : Int
    
    @Published var isResting: Bool
    
    
    init(displayValue: Double = 0.0, showValue: Bool = false, value: Double = 1.0, displayDigits: Double = 0.0, setTime : Double = 50, isPaused: Bool = false, sets: Int = 0, isResting: Bool = false, restValue: Double = 0.0, showAlert : Bool = false){
        self.displayValue = displayValue
        self.showValue = showValue
        self.value = value
        self.displayDigits = displayDigits
        self.setTime = setTime
        self.isPaused = isPaused
        self.sets = sets
        self.isResting = isResting
        self.restValue = restValue
        self.showAlert = showAlert
        
    }
    //    var color : Color
    // view of numbers
    
    func countingSets(){
        if displayValue >= 1.0{
            sets += 1
            isResting = true
        }
    }
    
    
    func startTimer() {
            if !isPaused { // Si no está pausado, reiniciamos
                showValue.toggle()
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
                            timer.invalidate()
                        }
                    }
                }
            }
        }
        
        func pauseTimer() {
            isPaused = true // Pausar sin modificar showValue
            timer?.invalidate() // Detener temporalmente el temporizador
        }
        
        func resumeTimer() {
            isPaused = false
            startTimer() // Retomar el temporizador
        }
        
    func stopTimer() {
        showValue = false
        isPaused = false
        timer?.invalidate()
        timer = nil
        displayValue = 0.0
        displayDigits = 0.0
    }
    
    
}
