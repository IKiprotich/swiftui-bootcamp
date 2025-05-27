//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 27/05/2025.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 30, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("macbook")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
