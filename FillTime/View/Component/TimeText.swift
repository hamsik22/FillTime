//
//  TimeText.swift
//  FillTime
//
//  Created by 황석현 on 3/5/24.
//

import SwiftUI

struct TimeText: View {
    
    @Binding var data: Int
    
    var body: some View {
        Text("\(data)")
            .font(.largeTitle)
    }
}

#Preview {
    TimeText(data: .constant(100))
}
