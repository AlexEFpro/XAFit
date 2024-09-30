//
//  WeightPickerConfigModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import Foundation

class WeightPickerConfigModel: ObservableObject, WheelPickerProtocol {
    @Published var count: Int
    @Published var steps: Int
    @Published var multiplier: Int
    @Published var spacing : CGFloat
    @Published var showText : Bool
    @Published var value : CGFloat
    @Published var isLoaded: Bool 
        
    init(count: Int = 30, steps: Int = 10, multiplier: Int = 10, spacing: CGFloat = 5, showText: Bool = true ,value: CGFloat = 0, isLoaded: Bool = false) {
        self.count = count
        self.steps = steps
        self.multiplier = multiplier
        self.spacing = spacing
        self.showText = showText
        self.value = value
        self.isLoaded = isLoaded
    }
    
}
