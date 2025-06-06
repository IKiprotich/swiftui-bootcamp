//
//  SafeAreaInsetsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 06/06/2025.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 300)
                
            }
            .navigationTitle("Safe Area Inset")
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("Hi")
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
