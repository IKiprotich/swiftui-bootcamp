//
//  toolbarBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 06/06/2025.
//

import Foundation
import SwiftUI

struct toolbarBootcamp: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.indigo.ignoresSafeArea()
                
                Text("hey 👋")
                    .foregroundColor(.white)
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading:Image(systemName: "heart.fill") ,
//                trailing:Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                        .background(Color.red)
                        
                }
            }
        }
    }
}

#Preview {
    toolbarBootcamp()
}
