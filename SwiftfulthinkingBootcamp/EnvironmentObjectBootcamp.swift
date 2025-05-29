//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 30/05/2025.
//

import SwiftUI

//observed object
//stateobject
//environment object --

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init(){
       getData()
    }
    
    
    func getData(){
       
        self.dataArray.append(contentsOf: ["ipad","ipod","watch","apple tv"])
    }
    
}


struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(viewModel.dataArray,id: \.self) { item in
                    NavigationLink(destination: detailView(selectedItem: item), label: {
                        Text(item)
                    })
                    
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}


struct detailView: View {
    
    
    
    let selectedItem: String
    var body: some View {
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(
                destination: finalView(),
                label: {Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                    .cornerRadius(30)})
            
                
        }
    }
}



struct finalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        ZStack{
            //background
            LinearGradient(
                gradient: Gradient(colors: [.blue,.black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing).ignoresSafeArea()
            
            //foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self){ item in
                        Text(item)
                    }
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
            
            
            
        }
        
    }
}



#Preview {
    EnvironmentObjectBootcamp()
}
