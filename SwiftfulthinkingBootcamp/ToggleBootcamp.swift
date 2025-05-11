//
//  ToggleBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 11/05/2025.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn, label: {
                    Text("Change Status..")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
