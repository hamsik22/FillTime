//
//  StandardButton.swift
//  FillTime
//
//  Created by 황석현 on 3/11/24.
//

import SwiftUI

struct StandardTextBar: View {
    
    var input: String
    
    var body: some View {
            Text(input)
                .bold()
                .font(.title)
                .foregroundStyle(.white)
                .frame(width: 140, height: 80)
                .background(.green.opacity(0.8))
                .clipShape(.rect(cornerRadius: 10))
        }
    }

#Preview {
    StandardTextBar(input: "Test")
}
