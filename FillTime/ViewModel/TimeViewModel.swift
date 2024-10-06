//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var sharedModel: TimeModel = TimeModel()
    // 뷰에서 표시할 메인 데이터
    @Published var timeList: [TimeData] = []
    
    init() {
        self.timeList = sharedModel.contentList
    }
    
    
    // MARK: for Time Functions
    func startTimer(uuid: UUID) {
        if let index = timeList.firstIndex(where: { $0.id == uuid }) {
            self.timeList[index].timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] Timer in
                timeList[index].totalSeconds += 1
                self.objectWillChange.send()
                print("\(timeList[index].title ?? "Title Error") Time : \(timeList[index].totalSeconds)")
            })
        }
    }
    
    func stopTimer(uuid: UUID) {
        if let index = timeList.firstIndex(where: { $0.id == uuid }) {
            let timer = timeList[index].timer
                if timer.isValid {
                    timer.invalidate()
                    print("Timer has Invalidate!")
                    self.objectWillChange.send()
                } else {
                    print("No Timer to Invalidate!")
                }
        }
    }
    
    // MARK: for View Functions
    /// 정수형 값을 "00:00:00" 형태로 변환한다.
    func timeFormatt(input: Int) -> String {
        let hours = input / 3600
        let minute = (input % 3600) / 60
        let remainingSeconds = input % 60
        
        return String(format: "%02d:%02d:%02d", hours, minute, remainingSeconds)
    }
    
    // MARK: for Model Functions
    /// 뷰모델을 통해 모델에 데이터를 추가한다.
    func addData(title: String) {
        sharedModel.contentList.append(TimeData(title: title))
    }
    
    /// 뷰모델 내의 데이터를 업데이트한다.
    func fetchData() {
        timeList = sharedModel.contentList
    }
    
}
