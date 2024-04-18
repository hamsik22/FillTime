//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/12/24.
//

import SwiftUI

struct TimerView: View {
    
    @Binding var progress: Float
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            ZStack {
                TimeGaugeBar(progress: $progress)
                Text(timeVM.timeText)
                    .font(.system(size: 50))
                    .bold()
            }
            HStack {
                Button(action: {
                    // TODO: 타이머 시작
                    timeVM.startTimer(for: 30)
                }, label: {
                    StandardTextBar(input: "시작")
                })
                Button(action: {
                    // TODO: 타이머 리셋
                }, label: {
                    StandardTextBar(input: "종료")
                })
            }
        }
    }
}

#Preview {
    TimerView(progress: .constant(0.4), timeVM: TimeViewModel())
}
