//
//  LogoView.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack{
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80,alignment: .center)
                .padding(.leading)
            
            Text("XAFit")
                .font(.title .bold())
                .foregroundStyle(.blue)
                
            
        }
        
        
        }
        
}

#Preview {
    LogoView()
}
