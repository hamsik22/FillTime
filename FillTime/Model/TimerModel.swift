//
//  TimerModel.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/12.
//

import Foundation
import SwiftUI

/**
 TimerManager
 타이머 인스턴스, 타이머에 관여하는 모든 메서드를 가진 클래스
 */
class TimerManager: ObservableObject {
    
    var timer: Timer?
    @Published var testingNum = 0
    var timeRepository: TimeRepository?
    
    // 타이머 인스턴스를 실행하는 함수
    func startTimer(manager: TimerManager) {
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.testingNum += 1
            print(self.testingNum)
        }
    }
    
    // 타이머 인스턴스를 종료하는 함수
    func stopTimer() { }
    
    // 타이머 전환하는 함수
    func switchTimer() { }
    
    // 타이머를 리셋하는 함수(데이터 초기화)
    func resetTimer() { }
    
}

class TimeRepository: ObservableObject {
    
    @Published var workTime: Int = 0
    @Published var currentTime: Int = 0
    @Published var restTime: Int = 0
    
}
