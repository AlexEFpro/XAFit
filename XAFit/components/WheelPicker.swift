//
//  WheelPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct WheelPicker: View {
    @Binding var altura: CGFloat
    var config : Config
    @State private var isLoaded: Bool = false
    var body: some View {
        GeometryReader{
            let size = $0.size
            let horizontalPadding = size.width/2
            ScrollView(.horizontal){
                HStack(spacing: config.spacing){
                    let totalSteps = config.steps * config.count
                    
                    ForEach(0...totalSteps, id: \.self){index in let remainder = index % config.steps
                        Divider()
                            .background(remainder == 0 ? Color.primary :   .blue)
                            .frame(width: 0, height: remainder == 0 ? 20 : 10, alignment: .center)
                            .frame(maxHeight: 20, alignment: .bottom)
                            .overlay(alignment:.bottom){
                                if remainder == 0 && config.showText{
                                    Text("\(index / config.steps)")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .textScale(.secondary)
                                        .fixedSize()
                                        .offset(y:20)
                                    
                                }
                            }
                        
                    }
                }
                .frame(height: size.height)
                .scrollTargetLayout()
                
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
            .scrollPosition(id: .init(get: {
                let position: Int? = isLoaded ?  (Int(altura) * config.steps)/config.multiplier : nil
                return position
            }, set: { newValue in if let newValue {altura = CGFloat(CGFloat((newValue)) / CGFloat(config.steps)) * CGFloat(config.multiplier) }}))
            .overlay(alignment:.center, content: {
                Rectangle()
                    .frame(width: 1 , height: 40)
                    .padding(.bottom)
            })
            .safeAreaPadding(.horizontal, horizontalPadding)
            .onAppear{
                if !isLoaded{isLoaded = true}
            }
        }
        
        
    }
    struct Config: Equatable{
        var count: Int
        var steps: Int = 1
        var spacing: CGFloat = 100
        var showText: Bool = true
        var multiplier: Int = 1
    }
}

#Preview {
    ContentView()
}
