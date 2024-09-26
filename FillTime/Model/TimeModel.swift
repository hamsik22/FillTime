//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeModel: ObservableObject {
    @Published var contentList: [TimeData] = []
    
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


/// 주된 데이터 구조
///
/// - id: UUID = 자동 초기화
/// - createdAt: Date = 자동 초기화
/// - title: String = 사용자 입력값
/// - totalSeconds: Int = 0으로 초기화
struct TimeData: Identifiable {
    let id = UUID()
    let createdAt = Date.now
    var title: String
    var totalSeconds: Int = 0
}
