//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 1/28/24.
//
// TODO: 시간관련 함수 정의 필요

import Foundation

/**시간 관련 데이터를 다루는 뷰모델*/
class TimeViewModel: ObservableObject {
    
    @Published var currentTime: Int
    @Published var workTime: Int
    @Published var restTime: Int
    
    private var timeModel: TimeModel
    
    init(timeModel: TimeModel) {
        self.currentTime = timeModel.currentTime
        self.workTime = timeModel.workTime
        self.restTime = timeModel.restTime
        self.timeModel = timeModel
    }
    
    /**타이머 시작*/
    func startTimer(is mode: Bool) { }
    /**타이머 정지*/
    func stopTimer() { }
    /**타이머 모드 전환하기*/
    func switchTimer(themode now: Bool) { }
    /**타이머 리셋*/
    func resetTimer() { }
    /**앱상태 전환시간 측정*/
    func checkPhaseTime() { }
    /**앱 비활성화 시간 계산*/
    func caculateInactivateTimes() { }
}
