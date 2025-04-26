//
//  PaddingAndSpacer.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 26/04/2025.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            
            Text("This is a description of what we will do on the screen. It is multiple lines and we will align the text to the leading edge of the view ")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                       y: 10)
        )
        .padding(.horizontal, 00)
        
        
        
            /**.background(Color.yellow)
            .padding(.all, 10)
            .padding(.leading, 20)
            .background(Color.blue) **/
    }
}

#Preview {
    PaddingAndSpacer()
}
