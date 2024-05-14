//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 4/20/24.
//

import Foundation

class TimeModel {
    
    var timer = Timer()
    var workTime = 5
    var restTime = 5
    var cycle = 2
    var timerState = true
    
    // MARK: 가장 기본적인 타이머 코드
    func startTimer() {
        var timeLeft = 5
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { t in
            if timeLeft == 0 {
                t.invalidate()
                print("timer has invalidate!")
            } else {
                timeLeft -= 1
                print("timeLeft : \(timeLeft)")
            }
        }
    }
    
    // MARK: 타이머 반복 실행
    func startLoopTimer() {
        var timeLeft = 0
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] t in
            if timeLeft == 0 {
                if cycle > 0 {
                    if timerState {
                        timeLeft = workTime
                        print("TimeLeft = WorkTime")
                        timerState.toggle()
                        print("TimeState = \(timerState)")
                    } else {
                        timeLeft = restTime
                        print("TimeLeft = RestTime")
                        cycle -= 1
                        print("Cycle = \(cycle)")
                        timerState.toggle()
                        print("TimeState = \(timerState)")
                    }
                }
            }
            timeLeft -= 1
            print("TimeLefe = \(timeLeft)")
            if (cycle == 0) && (timeLeft == 0) {
                t.invalidate()
                print("Timer has Invalidate!")
            }
        })
    }
}
