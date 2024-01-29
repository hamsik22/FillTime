//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 1/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    @Published var currentTime: Int
    @Published var workTime: Int
    @Published var restTime: Int
    
    private var timeModel: TimeModel
    
    init(currentTime: Int, workTime: Int, restTime: Int, timeModel: TimeModel) {
        self.currentTime = currentTime
        self.workTime = workTime
        self.restTime = restTime
        self.timeModel = timeModel
    }
    
    func startTimer(is mode: Bool) { }
    func stopTimer() { }
    func switchTimer(themode now: Bool) { }
    func resetTimer() { }
}
