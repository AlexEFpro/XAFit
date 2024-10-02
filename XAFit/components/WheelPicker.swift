//
//  WheelPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct WheelPicker<Model:WheelPickerProtocol>: View {
    @ObservedObject var model : Model
    
    
    var body: some View {
        GeometryReader{
            let size = $0.size
            let horizontalPadding = size.width/2
            VStack{
                HStack{
                    let units = CGFloat(model.steps)*CGFloat(model.value)
                    Text(verbatim : "\(model.value)")
                        .font(.title.bold())
                        .contentTransition(.numericText(value: units))
                        .animation(.snappy, value: model.value)
                    Text("\(model.units)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .textScale(.secondary)
                        .foregroundStyle(.blue)
                
                        
                }
                .padding(.bottom, 30)
                ScrollView(.horizontal){
                    HStack(spacing:model.spacing){
                        
                        let totalSteps = model.steps * model.count
                        //marks
                        ForEach(0...totalSteps, id: \.self){
                            index in
                            let remainder = index % model.steps
                            
                            Divider()
                                .background(remainder == 0 ? Color.primary: .gray)
                                .frame(width: 0 , height: remainder == 0 ? 20 : 10, alignment: .center)
                                .frame(maxHeight: 20, alignment: .bottom) // big marks
                                .overlay(alignment:.bottom){
                                    if remainder == 0 && model.showText{
                                        Text("\((index/model.steps) * model.multiplier)")
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
                    let position: Int? = model.isLoaded ? (Int(model.value)*model.steps)/model.multiplier : nil
                    return position}, set: {newValue in
                        if let newValue{
                            model.value = (CGFloat(newValue)/CGFloat(model.steps))
                            * CGFloat(model.multiplier)}}))
                .overlay(alignment:.center, content: {
                    Rectangle()
                        .frame(width: 1,height: 40)
                        .padding(.bottom,20)
                })
                .safeAreaPadding(.horizontal, horizontalPadding)
                .onAppear{
                    if !model.isLoaded{ model.isLoaded = true}
                }
            }
            
            
           
            
        }
    }
    
}

#Preview {
    ContentView()
}
