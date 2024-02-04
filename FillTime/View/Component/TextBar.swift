//
//  Text.swift
//  FillTime
//
//  Created by 황석현 on 10/25/23.
//
// TODO: 컴포넌트 설명 필요

import SwiftUI

struct TextBar: View {
    
    var someTexts: String = "Default"
    
    var body: some View {
        Text(someTexts)
            .font(.largeTitle)
            .bold()
            .padding()
    }
}

#Preview {
    TextBar()
}
