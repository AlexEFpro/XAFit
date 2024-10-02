//
//  WheelPickerProtocol.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import Foundation

protocol WheelPickerProtocol : ObservableObject {
    var count: Int {get set}
    var steps: Int {get set}
    var multiplier: Int {get set}
    var spacing : CGFloat {get set}
    var showText : Bool {get set}
    var value : CGFloat {get set}
    var isLoaded: Bool {get set}
    var units : String {get set}
}
