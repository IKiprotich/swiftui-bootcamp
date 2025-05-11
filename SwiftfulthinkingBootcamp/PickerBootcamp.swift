//
//  PickerBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 11/05/2025.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "1"
    var body: some View {
        VStack {
            HStack{
                Text("Age: ")
                Text(selection)
            }
            Picker(selection: $selection,
                   label: Text("Picker"),
                   content: {
                ForEach(18..<100) { number in
                    Text("\(number)")
                        .tag("\(number)")
                }
                
            })
            .pickerStyle(WheelPickerStyle())
        }
    }
}

#Preview {
    PickerBootcamp()
}
