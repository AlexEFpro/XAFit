//
//  HeightPickerConfigModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 01/10/24.
//

import Foundation

class HeightPickerConfigModel: ObservableObject, WheelPickerProtocol{
    @Published var count: Int
    
    @Published var steps: Int
    
    @Published var multiplier: Int
    
    @Published var spacing: CGFloat
    
    @Published var showText: Bool
    
    @Published var value: CGFloat
    
    @Published var isLoaded: Bool
    
     var units: String
    
    init(count: Int = 20 , steps: Int = 10, multiplier: Int = 10, spacing: CGFloat = 5, showText: Bool = true, value: CGFloat = 0, isLoaded: Bool = false, units: String = "cms") {
        self.count = count
        self.steps = steps
        self.multiplier = multiplier
        self.spacing = spacing
        self.showText = showText
        self.value = value
        self.isLoaded = isLoaded
        self.units = units
    }
    
    
}
