//
//  MockTimeSettingView.swift
//  FillTime
//
//  Created by 황석현 on 4/16/24.
//

import SwiftUI

struct MockTimeSettingView: View {
    
    var hourArray = Array(stride(from: 1, to: 24, by: 5))
    var minuteArray = Array(stride(from: 1, to: 60, by: 5))
    @ObservedObject var viewModel = MockClass()
    
    var body: some View {
        VStack {
                Picker("시간을 정하세요", selection: $viewModel.hourData) {
                    ForEach(hourArray, id: \.self) { item in
                        Text("\(item)").tag(item)
                    }
                }.pickerStyle(.wheel)
            Text("HourData = \(viewModel.hourData)")
            Text("HourData = \(viewModel.minuteData)")
        }
    }
}

#Preview {
    MockTimeSettingView()
}

class MockClass: ObservableObject {
    @Published var hourData = 0
    @Published var minuteData = 59
    private var timer = Timer()
    
    // 입력 수만큼 동작하는 시간 함수
    func mockStartTimerfor5Seconds() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { Timer in
            
        })
    }
}
