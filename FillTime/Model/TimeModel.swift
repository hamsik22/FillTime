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
 타이머 인스턴스, 타이머에 관여하는 모든 메서드를 가진 클래스
 */
struct TimeModel {
    
    var timer: Timer
    var workTime: Int
    var currentTime: Int
    var restTime: Int
    
}
