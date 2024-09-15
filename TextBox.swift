//
//  TextBox.swift
//  FillTime
//
//  Created by 황석현 on 9/15/24.
//

import SwiftUI

struct TextBox: View {
    
    var content: String
    
    var body: some View {
        Text(content)
            .padding()
            .background(.gray)
            .clipShape(.rect(cornerRadius: 10.0))
    }
}

#Preview {
    TextBox(content: "TextBox Preview")
}
