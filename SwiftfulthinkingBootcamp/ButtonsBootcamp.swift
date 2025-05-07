//
//  ButtonsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 07/05/2025.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is a title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press Me!"){
                self.title = "button was pressed".uppercased()
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "button 2 was pressed".uppercased()
            }, label: {
                Text("SAVE".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10))
            })
            
            Button(action: {
                self.title = "button 3 was pressed" .uppercased()
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            })
            
            Button(action: {
                self.title = "button 4 was pressed".uppercased()
            }, label: {
                Text("finish".uppercased())
                    .font(.caption)
                    .bold(true)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                        
                        
                        )
                        
            })
            
            
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
