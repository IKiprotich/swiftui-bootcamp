//
//  StepperBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 13/05/2025.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(10)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
                //Increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //Decrement
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
