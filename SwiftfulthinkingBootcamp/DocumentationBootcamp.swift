//
//  DocumentationBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 15/05/2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    
//MARK: PROPERTIES
    @State var data: [String] = ["Apples", "Bananas", "Oranges", "Pineapple"]
    @State var showAlert: Bool = false
    
//MARK: BODY
    
    //working copy - things to do 1.) fix the alert
    
    
    /*
     This is a multiline comment
     */
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
                
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert")
            }
        }
    }
    
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

//MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
