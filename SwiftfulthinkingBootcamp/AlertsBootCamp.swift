//
//  AlertsBootCamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 12/05/2025.
//

import SwiftUI

struct AlertsBootCamp: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var alertType: myAlerts? = nil
    
    enum myAlerts{
        case success
        case error
    }
    
    var body: some View {
       
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded!"
                    showAlert.toggle()
                }
                
                Button("Button 1"){
                    alertType = .success
//                    alertTitle = "Succesfuly uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
               
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
        
    }
    
    //this is an extracted function
    func getAlert() -> Alert {
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success!"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error"))
        default:
            return Alert(title: Text("ERROR!"))
        }
        
        
//        return Alert(title: Text(alertTitle),
//                     message:Text(alertMessage) ,
//                     dismissButton: .default(Text("OK")))
//        return  Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = Color.red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertsBootCamp()
}
