//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var timer: Timer?
    // taskState = True = 작업중
    @Published var taskState = true
    @Published var timePercent: Float = 0.3
    @Published var timeText = "00:00:00"
    @Published var cycle = 0
    var workTime = 0
    var restTime = 0
    
    // TODO: 반복타이머 실행 함수
    func startLoopTimer() {
        
        if self.cycle != 0 {
            // startTimer 함수 반복
            if taskState { startTimer(for: self.workTime) } else { startTimer(for: self.restTime) }
            self.cycle -= 1
        } else { resetTimer() }
    }
    
    // MARK: 입력된 값만큼 타이머를 진행하고, 입력 값이 0이 되면 타이머를 종료
    func startTimer(for time: Int) {
        var timeLeft = time
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            if timeLeft == 0 {
                self.taskState.toggle()
                self.timer?.invalidate()
                print("Timer has Ended")
            }
            self.timeText = self.getTimeText(time: timeLeft)
            print(timeLeft)
            timeLeft -= 1
        })
    }
    func resetTimer() {
        self.timer?.invalidate()
        self.workTime = 0
        self.restTime = 0
        self.cycle = 0
        self.timeText = getTimeText(time: 0)
        print("Timer has Reset!")
    }
    
    // TODO: getTimeElapsedPercent() 함수 정의
    func getTimeElapsedPercent() -> Float {
        return 0.8
    }
    
    // TODO: hours가 0이면 $02d:%02d 로 출력
    func getTimeText(time: Int) -> String {
    
        let hours = time / 3600
        let minutes = (time % 3600) / 60
        let seconds = time % 60
        
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}
