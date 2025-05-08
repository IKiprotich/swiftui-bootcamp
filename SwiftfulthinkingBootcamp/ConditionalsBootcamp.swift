//
//  ConditionalsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 08/05/2025.
//

import SwiftUI

struct ConditionalsBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            if isLoading{
                ProgressView()
            }
            
            Button("Is Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
//            Button("Circle Button: \(showCircle.description)"){
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle button: \(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//            if showCircle{
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 100, height: 100)
//            }
//            Spacer()
        }
      
    }
}

#Preview {
    ConditionalsBootcamp()
}
