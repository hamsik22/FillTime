//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

struct TimeModel: Identifiable {
    let id = UUID()
    var timeData: [TimeData]?
}

struct TimeData: Identifiable {
    let id = UUID()
    var title: String
    var description: String?
    var totalTime = 0
    var createdAt = Date()
}
