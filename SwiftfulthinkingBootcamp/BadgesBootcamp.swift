//
//  BadgesBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 05/06/2025.
//

import SwiftUI

// Badges are used to show a number of items in a list or a tab bar item
struct BadgesBootcamp: View {
    var body: some View {
       TabView{
        Color.red
            .tabItem{   
                Image(systemName: "heart.fill")
                Text("Home")
            }
            .badge(5)
            
        Color.blue
            .tabItem{
                Image(systemName: "heart.fill")
                Text("Home")
            }
            .badge(9)
            

        Color.green
            .tabItem{
                Image(systemName: "heart.fill")
                Text("Home")
            }
            .badge(10)
            

            
        }
    }
}

#Preview {
    BadgesBootcamp()
}
