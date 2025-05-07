//
//  ForEachBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 07/05/2025.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["hi", "hello", "everyone"]
    let myString: String = "Hello, World!"
    var body: some View {
        VStack{
            ForEach(data.indices){ index in
                Text("\(data[index]): \(index)")
                
            }
            
            ForEach(0..<100){ index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
