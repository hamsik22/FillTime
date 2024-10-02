//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    @Published private var sharedModel: TimeModel = TimeModel()
    
    /// 뷰에서 표시할 메인 데이터
    @Published var timeList: [TimeData] = []
    
    
    /// 정수형 값을 "00:00:00" 형태로 변환한다.
    func timeFormatt(input: Int) -> String {
        let hours = input / 3600
        let minute = (input % 3600) / 60
        let remainingSeconds = input % 60
        
        return String(format: "%02d:%02d:%02d", hours, minute, remainingSeconds)
    }
    
    /// 뷰모델을 통해 모델에 데이터를 추가한다.
    func addData(title: String) {
        sharedModel.contentList.append(TimeData(title: title))
    }
    
    /// 뷰모델 내의 데이터를 업데이트한다.
    func fetchData() {
        timeList = sharedModel.contentList
    }
    
}
