//
//  IntroView.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 13/06/2025.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack{
            //background
            
            RadialGradient(gradient: Gradient(colors: [Color(.purple), Color.blue]),
                           center: .center,
                           startRadius: 5,
                           endRadius: 500)
        }
    }
}

#Preview {
    IntroView()
}
