//
//  DashBoardUserView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 09/10/24.
//

import SwiftUI

struct DashBoardUserView: View {
    @EnvironmentObject var user: UserDataModel
    @EnvironmentObject var pr : ProgramsandPhyscal
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    VStack{
                        Text("Profile:")
                            .font(.title.bold())
                            .foregroundStyle(.blue)
                        HStack{
                            
                            Text("Name:")
                                .font(.title2.bold())
                            Spacer()
                            Text("Name")
                            Spacer()
                        }
                        HStack{
                            Text("Weight:")
                                .font(.title2.bold())
                            Spacer()
                            Text(String(format: "%.1f", user.weight))
                            weightRmPicker()
                            
                        }
                        HStack{
                            Text("Height:")
                                .font(.title2.bold())
                            Spacer()
                            Text(String(format:"%.1f",user.height))
                            Spacer()
                        }
                        HStack{
                            
                            Text("Age:")
                                .font(.title2.bold())
                            Spacer()
                            Text(String(format:"%.0f",user.age))
                            Spacer()
                        }
                    }
                   
                    
                    
                    
                
                }
                
                Section{
                    VStack{
                        Text("Training Data")
                            .font(.title.bold())
                            .foregroundStyle(.blue)
                        HStack{
                            Text("Total sesions")
                                .font(.title2.bold())
                            Spacer()
                            Text("0")
                                .bold()
                        }
//                        Spacer()
//                        HStack{
//                            Text("Pull Rm")
//                                .font(.title2.bold())
//                            Spacer()
//                            Text("0")
//                        }
//                        Spacer()
//                        HStack{
//                            Text("Push Rm")
//                                .font(.title2.bold())
//                            Spacer()
//                            Text("0")
//                        }
//                        Spacer()
//                        HStack{
//                            Text("Squat Rm")
//                                .font(.title2.bold())
//                            Spacer()
//                            Text("0")
//                        }
                    }
                    
                }
                Section{
                    
                        VStack{
                            
                                Text("Program")
                                .font(.title.bold())
                                .foregroundStyle(.blue)
                                programPicker()
                                .font(.title2.bold())
                            Spacer()
                            SegmentTrainingPicker()
                                .font(.title3.bold())
                            Spacer()
                            StartSesionButton()
                           
                        }
                    
                    
                   
                  
                   
                }
               
                
            }
        }
        
        .navigationTitle("Dashboard")
    }
        
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:user)
    DashBoardUserView()
        .environmentObject(user)
        .environmentObject(pr)
}
