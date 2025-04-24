//
//  Colorsbootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 24/04/2025.
//

import SwiftUI

struct Colorsbootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                //Color()
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                
            )
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Colorsbootcamp()
}
