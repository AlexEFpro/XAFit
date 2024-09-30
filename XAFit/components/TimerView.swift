//
//  Timer.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import SwiftUI

struct Timer: View {
    @State var value = 0.0
    @State var showValue = false
    @State var displayValue = 0.0
    var body: some View {
        ZStack{
            //level1  external background
            Circle()
                .stroke(lineWidth: 24)
                .frame(width: 200, height:200 )
                .foregroundStyle(.white)
                .shadow(color: Color.blue.opacity(0.1), radius: 10 , x:10, y:10)
            //level2 inernal background
            Circle()
                .stroke(lineWidth: 0.34)
                .frame(width: 175, height: 175)
                .foregroundStyle(LinearGradient(
                    gradient: Gradient(colors: [.green .opacity(0.3), .blue]),
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading))
                .overlay{
                    //level 3 sahdow background
                    Circle()
                        .stroke( .red.opacity(0.1), lineWidth:2)
                        .blur(radius: 5)
                        .mask{
                            Circle()
                                .foregroundStyle(LinearGradient(
                                    gradient: Gradient(colors: [.green , .blue]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
                        }
                }
            // level 4 progress bar
            Circle()
                .trim(from: 0, to: showValue ? value : 0)
                .stroke(style:StrokeStyle(lineWidth: 24 , lineCap:.round ))
                .frame(width: 200 , height: 200)
                .rotationEffect(.degrees(-90))
                .foregroundStyle(LinearGradient(
                    gradient: Gradient(colors: [.green , .blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
            NumValue(displayValue: displayValue, color: .blue)
            
        }
        .onTapGesture { //play function
            withAnimation(.spring().speed(0.2)){
                showValue.toggle()
                if showValue{
                    Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ timer in
                        if displayValue < value{
                            displayValue += 0.01
                        }else{
                            timer.invalidate()
                            
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    Timer()
}

struct NumValue: View {
    var displayValue = 0.0
    var color : Color
    var body: some View {
        Text("\(Int(displayValue))")
            .font(.largeTitle.bold())
            .foregroundStyle(displayValue < 10 ?.red : .blue) // condicional para  cambio de color en el nuemro
    }
}
