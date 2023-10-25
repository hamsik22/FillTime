//
//  Buttons.swift
//  FillTime
//
//  Created by 황석현 on 10/25/23.
//

import SwiftUI

struct Buttons: View {
    
    var buttonColor: Color = .blue
    var textString: String = "Button"
    
    var body: some View {
        Text(textString)
            .font(.title)
            .bold()
            .tint(.primary)
            .frame(maxWidth: .infinity)
            .padding()
            .background(buttonColor)
            .cornerRadius(10)
            .padding(20)
            
    }
}

#Preview {
    Buttons()
}
