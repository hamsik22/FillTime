//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var timer: Timer?
    @Published var model = TimeModel()
    @Published var timePercent: Float = 0.3
    @Published var timeTextString = ""
    
    func startTimer(time: Int) -> Int {
        var time = time
        // TODO: 시간이 0보다 낮아질 수 없게 제한점을 생성하고, 0이 되면 0이 되었음을 알리는 함수를 만들자.
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in 
            time -= 1
            self.timeTextString = self.getTimeText(time: time)
        })
        return time
    }
    
    func startWorkTime() {
        self.model.workTime = startTimer(time: self.model.workTime)
        self.timeTextString = getTimeText(time: self.model.workTime)
    }
    
    func startRestTime() {
        self.model.restTime = startTimer(time: self.model.restTime)
        self.timeTextString = getTimeText(time: self.model.restTime)
    }
    
    // TODO: getTimeElapsedPercent() 함수 정의
    func getTimeElapsedPercent() -> Float {
        return 0.8
    }
    
    func getTimeText(time: Int) -> String {
        let hour = time / 3600
        let minute = (time % 3600) / 60
        let second = time % 60
        
        return String(format: "%02d:%02dL%02d", hour, minute, second)
    }
}
