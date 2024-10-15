//
//  SegmentTrainingPicker.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 15/10/24.
//

import SwiftUI

struct SegmentTrainingPicker: View {
    @ObservedObject var pr : ProgramsandPhyscal
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
    SegmentTrainingPicker(pr:ProgramsandPhyscal())
}
