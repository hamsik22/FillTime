//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/8/24.
//

import SwiftUI

struct PomodoroSettingView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            HStack {
                TimerSetting(title: "집중", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.model.cycle)
                TimerSetting(title: "휴식", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.model.cycle)
            }
            TimerSetting(title: "반복", arrayRange: SystemData.pomodoro.timeRange, selection: $timeVM.model.cycle)
            HStack {
                Button(action: {}, label: {
                    StandardTextBar(input: "시작")
                })
                Button(action: {}, label: {
                    StandardTextBar(input: "종료")
                })
            }
        }
        .padding()
    }
}

#Preview {
    PomodoroSettingView(timeVM: TimeViewModel())
}
