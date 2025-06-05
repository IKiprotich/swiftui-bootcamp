//
//  ButtonstylesBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 04/06/2025.
//

import SwiftUI

struct ButtonstylesBootcamp: View {
    var body: some View {
        VStack{
            

            Button("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.large)

             Button("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)

             Button("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)

             Button("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)



        }
    }
}

#Preview {
    ButtonstylesBootcamp()
}
