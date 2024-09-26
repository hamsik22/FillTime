//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    @Published private var sharedModel: TimeModel = TimeModel()
    
    @Published var timeList: [TimeData] = []
    
    
    /// 정수형 값을 "00:00:00" 형태로 변환한다.
    func timeFormatt(input: Int) -> String {
        let hours = input / 3600
        let minute = (input % 3600) / 60
        let remainingSeconds = input % 60
        
        return String(format: "%02d:%02d:%02d", hours, minute, remainingSeconds)
    }
    
    func addData(title: String) {
        sharedModel.contentList.append(TimeData(title: title))
    }
    
    func fetchData() {
        timeList = sharedModel.contentList
    }
    
}
