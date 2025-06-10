//
//  AnyLayoutBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 10/06/2025.
//

// AnyLayout, which allows us to customize the layout of our Views. This is similar to using an HStack or VStack, except gives us additional capabilities to customize the View for different environments or settings.

import SwiftUI

// https://useyourloaf.com/blog/size-classes/

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

struct AnyLayoutBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnyLayoutBootcamp()
    }
}
