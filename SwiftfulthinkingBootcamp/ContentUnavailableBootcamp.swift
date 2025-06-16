//
//  ContentUnavailableBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 16/06/2025.
//

import SwiftUI

struct ContentUnavailableBootcamp: View {
    var body: some View {
        ContentUnavailableView.search
        
        ContentUnavailableView("No Internet Connection",
                               systemImage: "wifi.slash",
                               description: Text("Please connect to the internet and try again.")
        )
    }
}

#Preview {
    ContentUnavailableBootcamp()
}
