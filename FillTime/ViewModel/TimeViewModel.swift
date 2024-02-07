//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 1/28/24.
//

import Foundation

/**시간 관련 데이터를 다루는 뷰모델*/
class TimeViewModel: ObservableObject {
    
    private var timeModel: TimeModel
    
    @Published var currentTime: Int
    @Published var workTime: Int
    @Published var restTime: Int
    @Published var isWorking: Bool
    @Published var recordedTime: Int
    
    var timer: Timer
    var defaults: UserDefaults
    
    init(timeModel: TimeModel) {
        self.timeModel = timeModel
        self.currentTime = timeModel.currentTime
        self.workTime = timeModel.workTime
        self.restTime = timeModel.restTime
        self.isWorking = timeModel.isWorking
        self.recordedTime = timeModel.recordedTime
        self.timer = timeModel.timer
        self.defaults = UserDefaults()
    }
    
        /**입력에 따른 타이머 시작*/
        func startTimer(isWorking: Bool) {
            if isWorking {
                self.currentTime = 0
                stopTimer()
                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
                    self.currentTime += 1
                    self.workTime += 1
                    self.recordedTime += 1
                    print("CurrentTime : \(self.currentTime)")
                    print("WorkTime : \(self.workTime)")
                    print("Recorded Time : \(self.recordedTime)")
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
            print("Stop Timer!")
        }
        
        /**타이머 리셋*/
        func resetTimer() {
            stopTimer()
            self.currentTime = 0
            self.workTime = 0
            self.restTime = 0
            self.isWorking = false
            print("Reset Timer!")
        }
        /**앱상태 전환시간 측정*/
        func checkPhaseTime(into: Bool) {
            if into {
                timeModel.appActiveEnterTime = Date.now
            } else {
                timeModel.appBackgroundEnterTime = Date.now
            }
        }
        /**앱 비활성화 시간 계산*/
        func caculateInactivateTimes(isWorking: Bool) {
            if isWorking {
                self.currentTime += Int(timeModel.appBackgroundEnterTime.distance(to: timeModel.appActiveEnterTime))
                self.workTime += Int(timeModel.appBackgroundEnterTime.distance(to: timeModel.appActiveEnterTime))
                self.recordedTime += Int(timeModel.appBackgroundEnterTime.distance(to: timeModel.appActiveEnterTime))
            } else {
                self.currentTime += Int(timeModel.appBackgroundEnterTime.distance(to: timeModel.appActiveEnterTime))
                self.restTime += Int(timeModel.appBackgroundEnterTime.distance(to: timeModel.appActiveEnterTime))
            }
        }
    }

