//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 05/06/2025.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {

    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Mango","Peach"]

    var body: some View {
        List{
            ForEach(fruits, id:\.self){ fruit in
                Text($0.capitalized)
                .swipeActions(edge: .trailing, allowsFullSwipe: true){
                    Button("Archive"){}
                    .tint(.green)
                    Button("Save"){}
                    .tint(.blue)
                    Button("Share"){}
                    .tint(.red)
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true){
                    Button("Share"){}
                }
            .onDelete(perform: delete)
        }
    }

    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
