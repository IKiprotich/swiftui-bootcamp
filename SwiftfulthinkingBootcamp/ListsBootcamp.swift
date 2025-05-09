//
//  ListsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 09/05/2025.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Mango","Peach"]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: Text("Fruits")) {
                        ForEach(fruits, id:\.self){ fruit in
                            Text(fruit)
                                .font(.caption)
                                .bold(true)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                        }
                        .onMove(perform: move)
                        .onDelete(perform: delete)
                    }
                }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                    
            )
        }
        
        }
    
    var addButton: some View {
        Button("add"){
            add()
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("coconuts")
    }
    
    
    }


#Preview {
    ListsBootcamp()
}
