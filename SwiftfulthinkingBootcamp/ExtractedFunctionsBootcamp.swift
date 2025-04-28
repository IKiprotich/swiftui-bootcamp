//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 28/04/2025.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor: Color = .pink
    var body: some View {
        
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
          contentLayer
            
            
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action:{
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
