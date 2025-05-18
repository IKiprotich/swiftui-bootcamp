//
//  IfLetGuardBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 18/05/2025.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserId: String? = nil
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing guard statements")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
               
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data"
            isLoading  = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
