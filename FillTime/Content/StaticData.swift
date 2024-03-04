//
//  StaticData.swift
//  FillTime
//
//  Created by 황석현 on 3/2/24.
//

import Foundation

enum SystemText {
    case pomodoro
    case timeBoxing
    
    var title: String {
        switch self {
        case .pomodoro :
            return "뽀모도로"
        case .timeBoxing :
            return "타임박싱"
        }
    }
    var description: String {
        switch self {
        case .pomodoro :
            return "뽀모도로 기법은 짧은 시간 간격으로 작업을 집중하고 짧은 휴식을 취하는 것을 반복하여 생산성을 높이는 시간 관리 기법이다."
        case .timeBoxing :
            return "일정 시간 동안 특정 작업에만 집중하여 그 시간 동안 최대한의 생산성을 발휘하고, 이어서 휴식이나 다른 활동에 시간을 할당하는 시간 관리 기법이다."
        }
    }
}
