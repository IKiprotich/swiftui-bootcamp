//
//  TransistionsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 01/05/2025.
//

import SwiftUI

struct TransistionsBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)))
                    .animation(.spring())
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransistionsBootcamp()
}
