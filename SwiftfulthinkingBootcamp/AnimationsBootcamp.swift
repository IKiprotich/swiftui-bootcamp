//
//  AnimationsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 08/05/2025.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimated:Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation(
                    Animation
                    .default
                    .repeatForever(autoreverses: true)){
                    isAnimated.toggle()}
            }
            
            Spacer()
            RoundedRectangle(cornerRadius:isAnimated ? 50: 25)
                .fill(isAnimated ? Color.red: Color.green)
                .frame(width:isAnimated ? 100: 300, height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
                .offset(y: isAnimated ? 300: 0)
            Spacer()
            
            
        }
    }
}

#Preview {
    AnimationsBootcamp()
}
