//
//  ViewThatfitsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 16/06/2025.
//

import SwiftUI

struct ViewThatfitsBootcamp: View {
    var body: some View {
        ZStack{
            //background
            Color.red.ignoresSafeArea()
            
            ViewThatFits{
                Text("This is some text that i would like to dsiplay to the user")
                Text("This is some text that i would like to dsiplay")
                Text("This is some text")
            }
            
                .lineLimit(1)
                .minimumScaleFactor(0.3)
        }
        .frame(width: 100, height:100)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatfitsBootcamp()
}
