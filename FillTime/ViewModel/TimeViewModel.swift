//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    @Published var sharedModel: TimeModel
    
    var timeList: [TimeData] {
        return sharedModel.contentList
    }
    
    
    init() {
        self.sharedModel = TimeModel()
    }
    
    /// 정수형 값을 "00:00:00" 형태로 변환한다.
    func convertToTimeString(input: Int) -> String {
        let hours = input / 3600
        let minute = (input % 3600) / 60
        let remainingSeconds = input % 60
        
        return String(format: "%02d:%02d:%02d", hours, minute, remainingSeconds)
    }
    
}
