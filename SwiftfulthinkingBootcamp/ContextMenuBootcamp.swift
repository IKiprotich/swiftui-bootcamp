//
//  ContextMenuBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 06/05/2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = Color(.blue)
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use the context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report Post")
                Image(systemName: "flag.fill")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
            
            

           
        })
    }
        
}

#Preview {
    ContextMenuBootcamp()
}
