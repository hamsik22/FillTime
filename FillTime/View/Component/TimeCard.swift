//
//  TimeCard.swift
//  FillTime
//
//  Created by 황석현 on 3/2/24.
//

import SwiftUI

struct TimeCard: View {
    
    var title: String
    var description: String
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding(.top, 10)
            
            Text(description)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(.purple)
        .clipShape(.rect(cornerRadius: 30))
        .padding(.horizontal, 50)
    }
}

#Preview {
    TimeCard(title: SystemText.pomodoro.title, description: SystemText.pomodoro.description)
}
