//
//  PopoverBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 02/05/2025.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1: SHEET
            /**.sheet(isPresented: $showNewScreen) {
                NewScreen()
            } **/
            
            //METHOD 2: TRANSITION
          /**  ZStack{
                
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                }
            }
            .zIndex(2.0) **/
            
            //METHOD 3: ANIMAMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                . offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
                
            
        }
    }
}

#Preview {
    PopoverBootcamp()
    //NewScreen()
}
