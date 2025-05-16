//
//  ModelBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 16/05/2025.
//

import SwiftUI

struct userModel: Identifiable{
    let id: String = UUID().uuidString
    var displayname: String
    let userName: String
    let followerCount: Int
}

struct ModelBootcamp: View {
    @State var users: [userModel] = [userModel(displayname: "Nick", userName: "nICK123", followerCount: 190),
                                     userModel(displayname: "Emily", userName: "ninja", followerCount: 250),
                                     userModel(displayname: "John", userName: "Papi", followerCount: 280),
                                     userModel(displayname: "Dome", userName: "domb", followerCount: 233)]
    //["nick", "Emily", "Samantha", "Chris"]
    var body: some View {
        NavigationView{
            List{
                ForEach($users){ user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width:35 , height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayname)
                                .font(.headline)
                            
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                    }
                    .padding(.vertical, 10)
                    
                }
            }
        }
    }
}

#Preview {
    ModelBootcamp()
}
