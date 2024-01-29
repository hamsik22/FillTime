//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 1/28/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var timeModel: TimeModel
    
    init(timeModel: TimeModel) {
        self.timeModel = timeModel
    }
    
    func startTimer(is mode: Bool) { }
    func stopTimer() { }
    func switchTimer(themode now: Bool) { }
    func resetTimer() { }
}
