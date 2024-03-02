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
    
    var description: String {
        switch self {
        case .pomodoro :
            return "뽀모도로"
        case .timeBoxing :
            return "타임박싱"
        }
    }
}
