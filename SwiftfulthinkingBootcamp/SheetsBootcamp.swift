//
//  SheetsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 05/05/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                secondScreen()
            })
               // .sheet(isPresented: $showSheet, content: {
              //  secondScreen()
            //})
        }
    }
}

struct secondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                   
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
    //secondScreen()
}
