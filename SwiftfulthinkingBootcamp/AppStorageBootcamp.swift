//
//  AppStorageBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 30/05/2025.
//

import SwiftUI

struct AppStorageBootcamp: View {

    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            Button("save".uppercased()){
                let name = "Ian"
                currentUserName = name
               
            }
            
        }
        }
    }


#Preview {
    AppStorageBootcamp()
}
