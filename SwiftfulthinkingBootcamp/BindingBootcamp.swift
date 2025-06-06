//
//  BindingBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 01/05/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .background(buttonColor)
                .padding()
                .padding(.horizontal)
                .cornerRadius(10)
        })
        
    }
}




#Preview {
    BindingBootcamp()
}

// we use the
