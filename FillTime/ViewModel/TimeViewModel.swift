//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var timer: Timer?
    private var model = TimeModel()
    @Published var taskState = true
    @Published var timePercent: Float = 1.0
    @Published var timeText = "00:00:00"
    @Published var cycle = 0
    @Published var workTime = 0
    @Published var restTime = 0
    
    // TODO: 반복타이머 실행 함수
    func startLoopTimer(time: Int) {
        var timeLeft = time
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
                timeLeft = time
            }
        })
    }
    
    // MARK: Picker에서 선택된 숫자를 초 단위로 환산
    func caculateIntToMinute() {
        self.workTime = self.workTime
        self.restTime = self.restTime
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
            self.timePercent = self.getTimeElapsedPercent(time: timeLeft)
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
    
    func getTimeElapsedPercent(time: Int) -> Float{
        return Float(time) / Float(self.workTime)
        }
        
    
    // TODO: hours가 0이면 $02d:%02d 로 출력
    func getTimeText(time: Int) -> String {
    
        let hours = time / 3600
        let minutes = (time % 3600) / 60
        let seconds = time % 60
        
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}
