//
//  SpacerBoootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 30/04/2025.
//

import SwiftUI

struct SpacerBoootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                /**Spacer()
                 
                 Rectangle()
                 .fill(Color.black)
                 .frame(width: 100, height: 100)
                 
                 Spacer()
                 
                 Rectangle()
                 .fill(Color.red)
                 .frame(width: 100, height: 100)
                 
                 Spacer()
                 
                 Rectangle()
                 .fill(Color.green)
                 .frame(width: 100, height: 100)
                 Spacer() **/
                
                
                Image(systemName: "xmark")
                Spacer()
                
                Image(systemName: "gear")
                
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBoootcamp()
}

// The Spacer is adaptive and versatile component in SwiftUI that can be used to add space between items.
