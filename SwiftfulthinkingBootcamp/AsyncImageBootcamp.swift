//
//  AsyncImageBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 30/05/2025.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure(let error):
                Image(systemName: "questionmark")
                    .font(.headline)
           default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//        }, placeholder: {
//            ProgressView()
//        })
            
    }
}

#Preview {
    AsyncImageBootcamp()
}
