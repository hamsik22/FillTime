//
//  TimerModel.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/12.
//

import Foundation

class TimerModel: ObservableObject {
    
    @Published var timer = Timer()
}

class TimeRepository: ObservableObject {
    
    @Published var workTime: Int = 0
    @Published var currentTime: Int = 0
    @Published var restTime: Int = 0
    
}
