//
//  Enums.swift
//  FillTime
//
//  Created by 황석현 on 2/6/24.
//

import Foundation

enum SystemText: String {
    case workTime = "Work Time"
    case restTime = "Rest Time"
    case record = "Record"
    
    enum currentTime: String {
        case working = "You Worked for.."
        case rest = "You Rested for.."
    }
}

enum Defaluts: String {
    case userData = "UserData"
}

