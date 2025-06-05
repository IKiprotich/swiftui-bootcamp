//
//  FocustStateBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 05/06/2025.
//

import SwiftUI

struct FocustStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    
    @State private var username: String = ""
    //@FocusState private var usernameInFocus: Bool
    
    @State private var password: String = ""
   // @FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Add you name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(20)
            
            
            SecureField("Add you password here...", text:$password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(20)
            
            
            Button("SIGN UP 🚀"){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid || passwordIsValid {
                    print("Signed up")
                } else if usernameIsValid {
                    
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
            
//            Button("Toggle Focus State"){
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.usernameInFocus = true
//            }
//        }
        
    }
}
#Preview {
    FocustStateBootcamp()
}
