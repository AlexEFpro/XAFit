//
//  WheelPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct WheelPicker: View {
    var config : Config
    @Binding var value: Int
    var body: some View {
        GeometryReader{
            let size = $0.size
            let horizontalPadding = size.width/2
            VStack{
                HStack{
                    let cms = CGFloat(config.steps)*CGFloat(value)
                    Text(verbatim : "\(cms)")
                        .font(.title.bold())
                        .contentTransition(.numericText(value: cms))
                        .animation(.snappy, value: cms)
                    Text("cms")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .textScale(.secondary)
                        .foregroundStyle(.blue)
                
                        
                }
                .padding(.bottom, 30)
                ScrollView(.horizontal){
                    HStack(spacing:config.spacing){
                        
                        let totalSteps = config.steps * config.count
                        //marks
                        ForEach(0...totalSteps, id: \.self){
                            index in
                            let remainder = index % config.steps
                            
                            Divider()
                                .background(remainder == 0 ? Color.primary: .gray)
                                .frame(width: 0 , height: remainder == 0 ? 20 : 10, alignment: .center)
                                .frame(maxHeight: 20, alignment: .bottom) // big marks
                                .overlay(alignment:.bottom){
                                    if remainder == 0 && config.showText{
                                        Text("\(index/config.steps)")
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
                .scrollPosition(id: .init(get: {let position: Int? = value
                    return position}, set: {newValue in
                        if let newValue{value = newValue }}))
                .overlay(alignment:.center, content: {
                    Rectangle()
                        .frame(width: 1,height: 40)
                        .padding(.bottom,20)
                })
                .safeAreaPadding(.horizontal, horizontalPadding)
            }
            
            
           
            
        }
    }
    struct Config: Equatable{
        var count: Int
        var steps: Int = 10
        var spacing : CGFloat = 5
        var showText : Bool = true
    }
}

#Preview {
    ContentView()
}
