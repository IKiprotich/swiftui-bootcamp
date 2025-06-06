//
//  ResizableSheetBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 06/06/2025.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        
        Button("Click me"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            myNextView(detents: $detents)
//                .presentationDetents([.medium])
                .presentationDetents([.fraction(0.9)])
                .presentationDetents(<#T##detents: Set<PresentationDetent>##Set<PresentationDetent>#>, selection: <#T##Binding<PresentationDetent>#>)
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        }
        
    }
}

struct myNextView: View {
    
    @Binding var detents: PresentationDetent
    var body: some View {
        ZStack{
            Color.red
            Text("Hello world!")
            
            VStack(spacing: 20) {
                Button("Medium"){
                    detents = .medium
                }
                Button("Large"){
                    detents = .large
                }
            }
        }
       
        
    }
}

#Preview {
    ResizableSheetBootcamp()
}
