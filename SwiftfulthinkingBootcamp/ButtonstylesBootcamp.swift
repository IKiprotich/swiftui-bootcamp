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
            

            Buttton("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.large)

             Buttton("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)

             Buttton("Button Title"){

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)

             Buttton("Button Title"){

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
