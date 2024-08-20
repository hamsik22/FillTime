//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 4/20/24.
//

import Foundation

<<<<<<< HEAD
<<<<<<< HEAD
struct TimeModel {
    var workTime = 5
    var restTime = 5
    var cycle = 5
    var taskState = true
    var timePercent: Float = 0.0
    var timeText = "00:00:00"
=======
// TODO: 가설 1 - 모델에서 타이머 인스턴스를 관리한다.

class TimeModel {
    
>>>>>>> 3211979 ([Delete]: 코드 대량 삭제)
=======
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
>>>>>>> eaed5736e75c0889d84099faaae8059faf50b1f5
}
