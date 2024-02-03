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
    @Published var timer: Timer
    @Published var isWorking: Bool
    
    private var timeModel: TimeModel
    
    init(timeModel: TimeModel) {
        self.currentTime = timeModel.currentTime
        self.workTime = timeModel.workTime
        self.restTime = timeModel.restTime
        self.timer = timeModel.timer
        self.isWorking = timeModel.isWorking
        self.timeModel = timeModel
    }
    
        /**입력에 따른 타이머 시작*/
        func startTimer(isWorking: Bool) {
            if isWorking {
                self.currentTime = 0
                stopTimer()
                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
                    self.currentTime += 1
                    self.workTime += 1
                    print("CurrentTime : \(self.currentTime)")
                    print("WorkTime : \(self.workTime)")
                })
            } else {
                self.currentTime = 0
                stopTimer()
                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
                    self.currentTime += 1
                    self.restTime += 1
                    print("CurrentTime : \(self.currentTime)")
                    print("restTime : \(self.restTime)")
                })
            }
        }
        /**타이머 정지*/
        func stopTimer() {
            self.timer.invalidate()
        }
        
        /**타이머 리셋*/
        func resetTimer() {
            self.timer.invalidate()
            self.currentTime = 0
            self.workTime = 0
            self.restTime = 0
        }
        /**앱상태 전환시간 측정*/
        func checkPhaseTime(state: Bool) {
            if state {
                timeModel.appActiveEnterTime = Date.now
            } else {
                timeModel.appBackgroundEnterTime = Date.now
            }
        }
        /**앱 비활성화 시간 계산*/
        func caculateInactivateTimes(isWorking: Bool) {
            if isWorking {
                self.currentTime += Int(timeModel.appActiveEnterTime.distance(to: timeModel.appBackgroundEnterTime))
                self.workTime += Int(timeModel.appActiveEnterTime.distance(to: timeModel.appBackgroundEnterTime))
            } else {
                self.currentTime += Int(timeModel.appActiveEnterTime.distance(to: timeModel.appBackgroundEnterTime))
                self.restTime += Int(timeModel.appActiveEnterTime.distance(to: timeModel.appBackgroundEnterTime))
            }
        }
    }

