//
//  XAFitApp.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

@main
struct XAFitApp: App {
    // creacion de la instancia 
    @StateObject private var user = UserDataModel()
    @StateObject private var pr = ProgramsandPhyscal(user:UserDataModel())
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
                .environmentObject(pr)
            // inyeccion de ambas instancias como environmentobject
        }
    }
}
