//
//  CronoProtocol.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import Foundation
protocol CronoProtocol: ObservableObject{
    var displayValue : Double {get set}
    var showValue : Bool {get set}
    var value : Double {get set}
    var displayDigits : Double {get set}
    var setTime : Double{get set}
    var timer : Timer? {get set}
    var isPaused : Bool {get set}
    var isResting : Bool {get set}
    var sets : Int {get set}
    func startTimer()
    func stopTimer()
    func resumeTimer()
    func pauseTimer()
    func countingSets()
}
