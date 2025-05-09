//
//  AnimationTimingBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 09/05/2025.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating:Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack{
            Button("button"){
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:isAnimating ? 350: 50, height: 100)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 1.0,
                    blendDuration: 0))
            
               // .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}

//animatio timing help modify the velocity for each animation
