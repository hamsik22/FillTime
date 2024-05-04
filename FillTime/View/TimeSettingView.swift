//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/8/24.
//

import SwiftUI

/**Picker를 통해 시간을 설정하는 화면
 
 TimePicker 컴포넌트를 활용하여 값을 설정한다.
 
 # 표시되는 정보
 - 설정하는 값의 정보: String
 - 설정 값 범위: [Int]
 - 설정 값 바인딩 변수: $Int
 # 역할
 Picker에서 선택한 값을 ViewModel에 바인딩
 
 */
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

