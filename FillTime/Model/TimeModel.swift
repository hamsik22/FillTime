//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeModel: ObservableObject {
    // 여러 타이머를 다루기 위해서 필요한 배열
    @Published var contentList: [TimeData] = []
}


/// 주된 데이터 구조
///
/// - id: UUID = 자동 초기화
/// - createdAt: Date = 자동 초기화
/// - title: String = 사용자 입력값
/// - totalSeconds: Int = 0으로 초기화
/// - timer: Timer = 각 타이머마다 타이머를 개별적으로 관리하기 위해 자동 초기화
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
