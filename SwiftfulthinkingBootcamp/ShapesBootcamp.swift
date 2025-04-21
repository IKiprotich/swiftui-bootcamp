//
//  ShapesBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 21/04/2025.
//

import SwiftUI

struct ShpesBootcamp: View {
    var body: some View {
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 200, height: 100)
            
        //Circle()
        //Capsule(style: .circular)
           // .frame(width: 200, height: 100)
           // .foregroundColor(.pink)
          //.padding()
       // Ellipse()
           // .frame(width: 200, height: 100)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
           // .trim(from: 0.2 , to: 1)
            //.stroke(Color.purple, lineWidth: 50)
    }
}

#Preview {
    ShpesBootcamp()
}
