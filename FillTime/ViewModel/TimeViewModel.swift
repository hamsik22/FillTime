//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
/// ViewModel에는 View에게서 전달받고 전달할 데이터의 프로퍼티만 존재해야한다.

import Foundation
import Combine

class TimeViewModel: ObservableObject {
    
    @Published var workTime = 0
    @Published var timeText = ""
    
    private var cancellables = Set<AnyCancellable>()
    var model = TimeModel()
    
    init() {
        $workTime.sink { item in
            self.model.workTime = item
        }
        .store(in: &cancellables)
    }
    
    func getTimeText() {
        
    }
    
}
