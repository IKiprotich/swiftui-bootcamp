//
//  TernaryOperatorsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 08/05/2025.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    @State var isStartingState:Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting..." : "Stopped...")
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? Color.red : Color.green)
                .frame(width: 200, height: 100)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperatorsBootcamp()
}
