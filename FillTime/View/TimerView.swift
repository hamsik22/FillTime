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
                Button(action: {
                    timeVM.resetTimer()
                }, label: {
                    StandardTextBar(input: "종료")
                })
            
        }
        .onAppear(perform: {
            timeVM.caculateIntToMinute()
            timeVM.timeText = timeVM.getTimeText(time: timeVM.workTime)
            if timeVM.taskState {
                timeVM.startTimer(for: timeVM.workTime)
            } else {
                timeVM.startTimer(for: timeVM.restTime)
            }
        })
        .onDisappear(perform: {
            timeVM.resetTimer()
        })
    }
}

#Preview {
    TimerView(progress: .constant(0.4), timeVM: TimeViewModel())
}
