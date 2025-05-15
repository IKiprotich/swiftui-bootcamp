//
//  DarkModeBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 15/05/2025.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {

        DarkModeBootcamp()
            .preferredColorScheme(.light)

}
