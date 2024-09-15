//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeModel: ObservableObject {
    @Published var contentList: [TimeData] = []
    
    init() {
        contentList = TimeModel.sampleData
    }
    
}

extension TimeModel {
    static var sampleData: [TimeData] {
        return [
            TimeData(title: "Sample1", totalSeconds: 1),
            TimeData(title: "Sample2", totalSeconds: 100),
            TimeData(title: "Sample3", totalSeconds: 1000),
            TimeData(title: "Sample4", totalSeconds: 10000)
        ]
    }
}

struct TimeData: Identifiable {
    let id = UUID()
    let createdAt = Date.now
    var title: String
    var totalSeconds: Int
}
