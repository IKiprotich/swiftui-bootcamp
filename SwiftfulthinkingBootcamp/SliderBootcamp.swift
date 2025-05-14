//
//  SliderBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 14/05/2025.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
               // "\(sliderValue)"
                String(format: "%.2f", sliderValue)
            )
            //Slider(value: $sliderValue)
            
            //Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: <#T##() -> View#>,
                minimumValueLabel: <#T##() -> View#>,
                maximumValueLabel: <#T##() -> View#>)
                .accentColor(.red)
           
        }
    }
}

#Preview {
    SliderBootcamp()
}
