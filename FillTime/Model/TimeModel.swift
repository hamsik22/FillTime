//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 4/20/24.
//

import Foundation

class TimeModel {
    
    var timer = Timer()
    
    // TODO: 가장 기본적인 타이머 코드를 만들자
    func startTimer(for time: Int) {
        var timeLeft = time
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
}
