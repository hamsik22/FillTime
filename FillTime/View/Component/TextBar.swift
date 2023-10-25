//
//  Text.swift
//  FillTime
//
//  Created by 황석현 on 10/25/23.
//

import SwiftUI

struct TextBar: View {
    
    var someTexts: String = "Default"
    
    var body: some View {
        Text(someTexts)
            .font(.largeTitle)
            .bold()
    }
}

#Preview {
    TextBar()
}
