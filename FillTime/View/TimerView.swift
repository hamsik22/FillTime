//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/12/24.
//

import SwiftUI

/**타이머가 실행되는 뷰
 
 뷰가 나타남과 동시에 타이머는 실행된다.
 
# 표시되는 정보
  - 남은 시간: String
 - 남은 시간의 게이지: Float
 */
struct TimerView: View {
    
    @Binding var progress: Float
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            if timeVM.taskState {
                Text("Work")
            } else { Text("Rest") }
            ZStack {
                TimeGaugeBar(progress: $timeVM.timePercent)
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
            timeVM.startLoopTimer()
        })
        .onDisappear(perform: {
            timeVM.resetTimer()
        })
    }
}

#Preview {
    TimerView(progress: .constant(0.4), timeVM: TimeViewModel())
}
