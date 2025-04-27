//
//  StateBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 27/04/2025.
//


// when we give a variable the state property wrapper,
// we are basically telling the view to watch the state of this variable.
//if the variable changes, we might have to change/updat the view

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content layer
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1"){
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2"){
                        backgroundColor = .purple
                        myTitle = "BUTTON 2 was pressed"
                        count -= 1
                    }
                    
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
