//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimerView: View {
    
    var viewModel: TimerManager?
    
    var body: some View {
        VStack {
            TitleTextView(text: "Work Time")
            TimeTextView(textSize: 50)
            TitleTextView(text: "Current Time")
            TimeTextView(textSize: 30)
            TitleTextView(text: "Rest Time")
            TimeTextView(textSize: 50)
            HStack {
                Button {
                    viewModel?.callStartTimer()
                } label: { VStack{
                    Text("Start")
                }
                    
                }
                Button { } label: { Text("Stop") }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimerManager())
    }
}
