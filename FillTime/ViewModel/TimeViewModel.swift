//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/28/24.
/// ViewModel에는 View에게서 전달받고 전달할 데이터의 프로퍼티만 존재해야한다.

import Foundation
import Combine

// TODO: 가설 1 - 모델의 특정 프로퍼티 변경을 감지해서 뷰에게 필요한 데이터만 다룬다.
class TimeViewModel: ObservableObject {
    
    // MARK: TimerView
    @Published var timeText = "00:00:00"
    @Published var timePercent: Float = 1.0
    // MARK: TimerSettingView
    @Published var cycle: Int = 0
    @Published var workTime: Int = 0
    @Published var restTime: Int = 0
    // MARK: etc
    private var model: TimeModel
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.model = TimeModel()
        $cycle
            .sink { [weak self] item in
                self?.model.cycle = item
            }
            .store(in: &cancellables)
        
        $workTime
            .sink { [weak self] item in
                self?.model.workTime = item
                self!.timeText = self?.getTimeText(time: (self?.model.workTime)!) ?? "00:00:00"
            }
            .store(in: &cancellables)
        
        $restTime
            .sink { [weak self] item in
                self?.model.restTime = item
            }
            .store(in: &cancellables)
    }
    
    // TODO: hours가 0이면 $02d:%02d 로 출력
    func getTimeText(time: Int) -> String {
        
        let hours = time / 3600
        let minutes = (time % 3600) / 60
        let seconds = time % 60
        
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
    /**
     타이머의 남은 시간을 Float 형태로 반환하는 함수
     */
    func getTimeElapsedPercent(time: Int) -> Float{
        return Float(time) / Float(self.workTime)
    }
    
    // TODO: 반복타이머 실행 함수
    func startLoopTimer() { }
    
    // MARK: 입력된 값만큼 타이머를 진행하고, 입력 값이 0이 되면 타이머를 종료
    func startTimer(for time: Int) { }
    
    func resetTimer() { }
    
        
    
}
