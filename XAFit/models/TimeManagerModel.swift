//
//  TimeManagerModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import Foundation
import SwiftUICore
class TimeManager : ObservableObject, CronoProtocol{
    
    
    @Published var sets: Int
    @Published var isResting: Bool
    
    @Published var isPaused: Bool
    
    internal var timer: Timer?
    
    @Published var setTime: Double // time of sets
    @Published var displayValue : Double
    @Published var showValue : Bool
    @Published var value : Double
    @Published var displayDigits : Double
    
    init(displayValue: Double = 0.0, showValue: Bool = false, value: Double = 1.0, displayDigits: Double = 0.0, setTime : Double = 60, isPaused: Bool = false, sets: Int = 0, isResting: Bool = false) {
        self.displayValue = displayValue
        self.showValue = showValue
        self.value = value
        self.displayDigits = displayDigits
        self.setTime = setTime
        self.isPaused = isPaused
        self.sets = sets
        self.isResting = isResting
    }
    //    var color : Color
    // view of numbers
    
    
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
                            self.countingSets()
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
        sets = 0
        
    }
    func countingSets() {
        if displayValue >= 1.0{
            sets += 1
            isResting = true
        }
    }
    
}
