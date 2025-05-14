//
//  TabviewBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 14/05/2025.
//

import SwiftUI

struct TabviewBootcamp: View {
    var body: some View {
        TabView{
            
            ExtractedView()
            
            
            
            Text("HOME TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
            
            
        }
        .accentColor(.red)
    }
}

#Preview {
    TabviewBootcamp()
}

struct ExtractedView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Text("WELCOME TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}
