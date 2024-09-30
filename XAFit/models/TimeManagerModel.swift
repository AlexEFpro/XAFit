//
//  TimeManagerModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import Foundation
class TimeManager : ObservableObject, CronoProtocol{
    @Published var displayValue = 0.0
    @Published var showValue = false
    var value = 1.0
    func startTimer() {
            Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true) { [weak self] timer in
                guard let self = self else {
                    timer.invalidate()
                    return
                }
                
                if self.showValue {
                    // Incrementar el valor mostrado hasta el valor máximo
                    if self.displayValue < self.value {
                        self.displayValue += 0.01
                    } else {
                        timer.invalidate()
                    }
                } else {
                    // Decrementar el valor mostrado hasta llegar a 0
                    if self.displayValue > 0.0 {
                        self.displayValue -= 0.01
                    } else {
                        timer.invalidate()
                    }
                }
            }
        }
        
    }
