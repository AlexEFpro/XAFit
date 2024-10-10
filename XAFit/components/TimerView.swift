//
//  Timer.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 29/09/24.
//

import SwiftUI


struct TimerView<Model:CronoProtocol>: View {
    @ObservedObject var tm : Model
    
    var body: some View {
        VStack{
            ZStack{
                //level1  external background
                Circle()
                    .stroke(lineWidth: 24)
                    .frame(width: 180, height:180 )
                    .foregroundStyle(.white)
                    .shadow(color: Color.blue.opacity(0.1), radius: 10 , x:10, y:10)
                //level2 inernal background
                Circle()
                    .stroke(lineWidth: 0.34)
                    .frame(width: 155, height: 155)
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
                    .trim(from: 0, to: tm.showValue ? tm.displayValue : 0)
                    .stroke(style:StrokeStyle(lineWidth: 24 , lineCap:.round ))
                    .frame(width: 180 , height: 180)
                    .rotationEffect(.degrees(-90))
                    .foregroundStyle(LinearGradient(
                        gradient: Gradient(colors: [.green , .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                
                if tm.isResting{
                    Circle()
                        .trim(from: 0, to:tm.restValue)
                        .stroke(style: StrokeStyle(lineWidth: 24,lineCap: .round))
                        .frame(width: 130, height: 130)
                        .rotationEffect(.degrees(-90))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [ .yellow,.red]), startPoint: .topLeading,endPoint: .bottomTrailing))
                }
                
                    
               
                    Text("\(Int(tm.displayDigits))")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.blue)
                        .padding()
                
                
            }
            .padding(.bottom)
            // alert form 4sets completed
            .alert("Exercise Complete", isPresented:$tm.showAlert){
                Button("OK", action: tm.stopTimer)
            }
            
            HStack{
                
                Button("", systemImage: "play" , action: {
                    if tm.isPaused {
                        tm.resumeTimer()
                    } else {
                        tm.startTimer()
                    }
                })
                .font(.title.bold())
                .foregroundStyle(.blue)
                
                Button("", systemImage: "stop", action: tm.stopTimer)
                    .font(.title.bold())
                    .foregroundStyle(.blue)
                
                Button("", systemImage: "pause", action: tm.pauseTimer)
                    .font(.title.bold())
                    .foregroundStyle(.blue)
                
                
                
                
                
            }
            .padding()
            HStack{
                Text("Sets: \(tm.sets) ")
                    .font(.title.bold())
                    .foregroundStyle(.blue)
            }
        }
        
    }
}

#Preview {
    TimerView(tm: TimeManager())
}

