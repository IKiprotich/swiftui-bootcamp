//
//  GroupBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 06/06/2025.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            
            Group{
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.caption)
            .foregroundColor(.green)
            
        }
        .foregroundColor(.red)
        .font(.largeTitle)
    }
}

#Preview {
    GroupBootcamp()
}
