//
//  TimerManager.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/13.
//

import Foundation

class TimerManager: ObservableObject {
    
    var timerModel = TimerModel()
    
    
    // 타이머 시작하는 함수
    func callStartTimer() {
        timerModel.startTimer(manager: timerModel)
    }
    // 타이머 정지하는 함수
    func callStopTimer() { }
    // 타이머 전환하는 함수
    func callSwitTimer() { }
    // 타이머 리셋하는 함수
    func callResetTimer() { }
}
