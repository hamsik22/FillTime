//
//  Buttons.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/13.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BasicButton: View {
    
    var buttonText: String?
    init(buttonText: String? = nil) {
        self.buttonText = buttonText
    }
    var body: some View {
        Text(buttonText ?? "None Text")
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.cyan)
            .cornerRadius(5)
            .padding()
            .font(.system(size: 40))
            .bold()
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        BasicButton()
    }
}
