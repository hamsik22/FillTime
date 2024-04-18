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
    @Published var timeText = "00:00:00"
    var workTime = 250
    var restTime = 0
    var cycle = 0
    
    // TODO: 입력값 받기
    // MARK: 입력된 값만큼 타이머를 진행하고, 입력 값이 0이 되면 타이머를 종료
    func startTimer(for time: Int) {
        var timeLeft = time
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            if timeLeft == 0 {
                self.timer?.invalidate()
                print("Timer has Ended")
            }
            timeLeft -= 1
            self.timeText = self.getTimeText(time: timeLeft)
            print(timeLeft)
        })
    }
    // TODO: 타이머 중지
    // TODO: 타이머 리셋
    // TODO: 입력값 할당 및 대입
    
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
