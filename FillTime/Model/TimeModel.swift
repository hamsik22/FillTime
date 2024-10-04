//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeModel: ObservableObject {
    @Published var contentList: [TimeData] = []
    var timer: Timer?
}


/// 주된 데이터 구조
///
/// - id: UUID = 자동 초기화
/// - createdAt: Date = 자동 초기화
/// - title: String = 사용자 입력값
/// - totalSeconds: Int = 0으로 초기화
class TimeData: Identifiable, ObservableObject {
    let id = UUID()
    let createdAt = Date.now
    var title: String?
    @Published var totalSeconds: Int = 0
    
    init(title: String) {
        self.title = title
    }
}
