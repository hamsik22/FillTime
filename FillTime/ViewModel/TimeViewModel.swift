//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var timer: Timer?
    @Published var timePercent: Float = 0.3
    @Published var timeTextString = "00:00:00"
    @Published var workTime = 250
    @Published var restTime = 0
    @Published var cycle = 0
    
    // TODO: 입력값 받기
    // TODO: 타이머 실행
    // TODO: 타이머 중지
    // TODO: 타이머 리셋
    // TODO: 입력값 할당 및 대입
    
    func startTimer(time: Int) -> Int {
        var time = time
        // TODO: 시간이 0보다 낮아질 수 없게 제한점을 생성하고, 0이 되면 0이 되었음을 알리는 함수를 만들자.
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            print("time is \(time)")
            self.timeTextString = self.getTimeText(time: time)
            print(self.timeTextString)
            time -= 1
        })
        return time
    }
    
    func startWorkTime() {
        print("work timer started")
        self.workTime = startTimer(time: self.workTime)
    }
    
    func startRestTime() {
        self.restTime = startTimer(time: self.restTime)
        self.timeTextString = getTimeText(time: self.restTime)
    }
    
    func stopTimer() {
        print("timer stopped")
        self.timer?.invalidate()
    }
    
    // TODO: getTimeElapsedPercent() 함수 정의
    func getTimeElapsedPercent() -> Float {
        return 0.8
    }
    
    func getTimeText(time: Int) -> String {
    
        let hours = String(format: "%02d:", time / 3600)
        let minutes = String(format: "%02d:", (time % 3600) / 60)
        let seconds = String(format: "%02d", time % 60)
        
        return hours + minutes + seconds
    }
}
