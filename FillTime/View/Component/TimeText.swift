//
//  TimeText.swift
//  FillTime
//
//  Created by 황석현 on 10/25/23.
//

import SwiftUI

struct TimeText: View {
    
    var timeData: Int = 5
    
    var body: some View {
        Text(String(format: "%02d:%02d:%02d", timeData/3600, (timeData%3600)/60, timeData%60))
            .frame(maxWidth: .infinity)
            .padding()
            .background(.secondary)
            .font(.title)
            .foregroundColor(.primary)
            .cornerRadius(30)
            .padding(.horizontal, 20)
    }
}

#Preview {
    TimeText()
}
