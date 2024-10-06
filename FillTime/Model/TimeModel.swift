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


/// 주된 데이터 구조
///
/// - id: UUID = 자동 초기화
/// - createdAt: Date = 자동 초기화
/// - title: String = 사용자 입력값
/// - totalSeconds: Int = 0으로 초기화
class TimeData: Identifiable {
    let id = UUID()
    let createdAt = Date.now
    var title: String?
    var totalSeconds: Int = 0
    var timer = Timer()
    
    init(title: String) {
        self.title = title
    }
}
