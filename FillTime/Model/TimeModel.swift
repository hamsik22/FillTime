//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 4/20/24.
//

import Foundation

// TODO: 가설 1 - 모델에서 타이머 인스턴스를 관리한다.

class TimeModel {
    
    var timer = Timer()
    var workTime = 5
    var restTime = 5
    var cycle = 5
    var taskState = true
    
    // MARK: 일반 타이머 실행
    func startTimer() {
        var timeLeft = self.workTime

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            if timeLeft == 0 {
                self.taskState.toggle()
                self.timer.invalidate()
                print("Timer has Ended")
            }
            timeLeft -= 1
        })
    }
    
    // MARK: 반복 타이머 실행
    func startLoopTimer() {
        var timeLeft = self.workTime
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            timeLeft -= 1
            print("TimeLeft: \(timeLeft)")
            if timeLeft == 0 {
                if self.cycle == 0 {
                    timer.invalidate()
                    print("Timer Invalidate!")
                }
                print("Cycle: \(self.cycle)")
                self.cycle -= 1
                timeLeft = self.workTime
            }
        })
    }
    
    // MARK: 타이머가 유효하면 해제
    func stopTimer() {
        if self.timer.isValid {
            self.timer.invalidate()
            print("Timer Stopped!")
        }
    }
    
    // MARK: Picker에서 선택된 숫자를 초 단위로 환산
    func caculateIntToMinute() {
        
    }
    
}
