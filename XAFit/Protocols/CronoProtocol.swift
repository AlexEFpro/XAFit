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
    func startTimer()
}
