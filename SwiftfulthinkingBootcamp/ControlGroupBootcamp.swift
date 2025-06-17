//
//  ControlGroupBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 17/06/2025.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My menu"){
            ControlGroup("One") {
                
                Button("Uno"){
                    
                }
                
                Button("Dos"){
                    
                }
                
                Button("Tres"){
                    
                }
                
                
            }
            
            Button("Two"){
                
            }
            
            Menu("Three"){
                
                Button("Hi"){
                    
                }
                
                Button("Hello"){
                    
                }
                
                Button("How are you?"){
                    
                }
            }
            
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
