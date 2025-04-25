//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 25/04/2025.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        Spacer()
       Text("Hello, World!")
            
            
            .background(
                //Color.red
               // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]))
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
           
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
        
        Spacer()
        
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
          Spacer()
        
       Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                     ,alignment:.center
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                ,alignment:.center )
        
        Spacer()
        
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10, x:0.0 , y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.purple,
                                    radius: 10, x: 5, y: 5)
                        
                        ,alignment: .bottomTrailing)
                        
                    )
            
            Spacer()
        
            
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
