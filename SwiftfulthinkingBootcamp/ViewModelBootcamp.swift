//
//  ViewModelBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 28/05/2025.
//

import SwiftUI

struct fruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [fruitModel] = []
    @Published var isLoding: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = fruitModel(name: "orange", count: 20)
        let fruit2 = fruitModel(name: "bananna", count: 3)
        let fruit3 = fruitModel(name: "guavaa", count: 34)
        
        isLoding = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            
            self.isLoding = false
            
        }
        
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}


struct ViewModelBootcamp: View {
    
    //@StateObject -> USE THIS ON CREATION / INIT
    //ObservedObject -> Use this for subviews
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoding{
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: seconScreen(fruitViewModel: fruitViewModel),
                                                   label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }
                                                  )
                                    
            )
            .listStyle(GroupedListStyle())
           
        }
    }
    
   
}


struct seconScreen:View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
