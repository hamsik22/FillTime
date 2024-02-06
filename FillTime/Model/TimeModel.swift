//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/12.
//

import Foundation
import SwiftUI

/**
 TimeModel
 시간과 관련된 속성 및 인스턴스를 지닌 모델
 */
struct TimeModel {
    
    var timer: Timer = Timer()
    var workTime: Int = 0
    var currentTime: Int = 0
    var restTime: Int = 0
    var isWorking: Bool = false
    
    var appBackgroundEnterTime: Date = Date()
    var appActiveEnterTime: Date = Date()
    
    var recordedTime: Int = UserDefaults.standard.integer(forKey: Defaluts.userData.rawValue)
    
}
