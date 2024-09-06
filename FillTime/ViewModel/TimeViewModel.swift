//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var model = TimeModel()
    @Published var contentArray: [ContentModel]
    
    init() {
        self.contentArray = model.contentArray
    }
    
    /// 정수형 값을 "00:00:00" 형태로 변환한다.
    func convertToTime(input: Int) -> String {
        let hours = input / 3600
        let minute = (input % 3600) / 60
        let remainingSeconds = input % 60
        
        return String(format: "%02d:%02d:%02d", hours, minute, remainingSeconds)
    }
    
}
