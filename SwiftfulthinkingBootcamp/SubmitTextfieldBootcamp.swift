//
//  SubmitTextfieldBootcamp.swift
//  SwiftfulthinkingBootcamp
//
//  Created by Ian   on 05/06/2025.
//

import SwiftUI

struct SubmitTextfieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
            .onSubmit {
            print("something to the console")
        }
            .submitLabel(.route)
    }
}

#Preview {
    SubmitTextfieldBootcamp()
}
