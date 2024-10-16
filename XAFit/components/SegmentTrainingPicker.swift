//
//  SegmentTrainingPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 15/10/24.
//

import SwiftUI

struct SegmentTrainingPicker: View {
    @EnvironmentObject var pr : ProgramsandPhyscal
    var body: some View {
        Picker("Select yor segment", selection: $pr.selectedSegment){
            ForEach(ProgramsandPhyscal.Program.SegmentsPhaseI.allCases){segment in Text(segment.rawValue)}
        }
        List(pr.selectedProgram.segmentExercise(for: pr.selectedSegment),id: \.self){exercise in Text(exercise)
            .font(.body.bold()
            
                  
            )}
    }
}

#Preview {
    let user = UserDataModel()
    let pr = ProgramsandPhyscal(user:user)
    SegmentTrainingPicker()
        .environmentObject(user)
        .environmentObject(pr)
}
