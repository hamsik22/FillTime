//
//  TimeText.swift
//  FillTime
//
//  Created by 황석현 on 3/5/24.
//

import SwiftUI

struct TimeText: View {
    
    @Binding var timeData: Int
    
    var body: some View {
        Text("\(timeData)")
            .font(.largeTitle)
    }
}

#Preview {
    TimeText(timeData: .constant(100))
}
