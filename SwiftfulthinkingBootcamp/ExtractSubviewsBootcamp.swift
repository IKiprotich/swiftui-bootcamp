//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 28/04/2025.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            //BACKGROUND
            Color.blue.edgesIgnoringSafeArea(.all)
            
            HStack {
                MyItem(title: "Apples", count: 10, color: .red)
                MyItem(title: "Oranges", count: 23, color: .brown)
                MyItem(title: "Bananas", count: 3, color: .yellow)
            }
            
            
        }
    }
    
   
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

//great when you have dynamic itmes that change
