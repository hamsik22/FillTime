//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/8/24.
//

import SwiftUI

struct TimeSettingView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            HStack {
                TimePicker(title: "집중", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.workTime)
                TimePicker(title: "휴식", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.restTime)
                TimePicker(title: "반복", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.cycle)
            }
                Button(action: {
                }, label: {
                    NavigationLink {
                        TimerView(progress: $timeVM.timePercent, timeVM: timeVM)
                    } label: {
                        // TODO: 수정필요, 타이머에도 시작버튼이 있음
                        StandardTextBar(input: "시작")
                    }
                })
        }
        .padding()
    }
}

#Preview {
    TimeSettingView(timeVM: TimeViewModel())
}
