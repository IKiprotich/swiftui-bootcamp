//
//  TextEditorBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 10/05/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is a starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("Text Editor BootCamp!")
        }
        
    }
}

#Preview {
    TextEditorBootcamp()
}
