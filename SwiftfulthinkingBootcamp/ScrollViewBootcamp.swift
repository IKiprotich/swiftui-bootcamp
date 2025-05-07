//
//  ScrollViewBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 07/05/2025.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
       // ScrollView(.horizontal, showsIndicators: true){
        //    HStack{
         //       ForEach(0..<50){ index in
          //          Rectangle()
        //                .fill(Color.blue)
          //              .frame(width: 300, height: 300)
       //         }
               
                
          
      //      }
      //  }
        
        ScrollView{
            VStack{
                ForEach(0..<10){ index in
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                           
                            
                        }
                    }
                }
            }
        }
        
        
        }
}

#Preview {
    ScrollViewBootcamp()
}
