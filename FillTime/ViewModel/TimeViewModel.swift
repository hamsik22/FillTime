//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 1/28/24.
//

import Foundation

/**시간 관련 데이터를 다루는 뷰모델*/
class TimeViewModel: ObservableObject {
    
    @Published var currentTime: Int
    @Published var workTime: Int
    @Published var restTime: Int
    
    private var timeModel: TimeModel
    
    init(timeModel: TimeModel) {
        self.currentTime = timeModel.currentTime
        self.workTime = timeModel.workTime
        self.restTime = timeModel.restTime
        self.timeModel = timeModel
    }
    
    func startTimer(is mode: Bool) { }
    func stopTimer() { }
    func switchTimer(themode now: Bool) { }
    func resetTimer() { }
}
