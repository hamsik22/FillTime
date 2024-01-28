//
//  TimerModel.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/12.
//

import Foundation
import SwiftUI

/**
 TimerModel
 타이머 인스턴스, 타이머에 관여하는 모든 메서드를 가진 클래스
 */
class TimeModel: ObservableObject {
    
    var timer: Timer?
    
    @Published var workTime: Int = 0
    @Published var currentTime: Int = 0
    @Published var restTime: Int = 0
    
    /**타이머를 실행하는 함수*/
    func startTimer(is mode: Bool) {
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] timer in
            if mode {
                workTime += 1
                currentTime += 1
                print("Work:\(String(workTime))")
                print("Current:\(String(currentTime))")
            } else {
                restTime += 1
                currentTime += 1
                print("Rest:\(String(restTime))")
                print("Current:\(String(currentTime))")
            }
            
        }
    }
    
    /**
     타이머 인스턴스를 종료하는 함수
     */
    func stopTimer() {
        self.timer?.invalidate()
        print("timer has Invalidate!")
    }
    
    // 타이머 전환하는 함수
    func switchTimer(themode now: Bool) {
        self.timer?.invalidate()
        currentTime = 0
        print("Timer has Invalidate!")
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] timer in
            if now {
                workTime += 1
                currentTime += 1
                print("Work:\(String(workTime))")
                print("Current:\(String(currentTime))")
            } else {
                restTime += 1
                currentTime += 1
                print("Rest:\(String(restTime))")
                print("Current:\(String(currentTime))")
            }
        }
    }
    
    // 타이머를 리셋하는 함수(데이터 초기화)
    func resetTimer() { 
        self.timer?.invalidate()
        self.timer = nil
        workTime = 0
        currentTime = 0
        restTime = 0
        print("Timer has Reset!")
    }
    
}
