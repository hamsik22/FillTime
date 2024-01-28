//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var timerModel = TimeModel()
    @State var isWorking = false
    
    
    var body: some View {
        VStack(alignment: .leading){
            TextBar(someTexts: "Work Time")
            TimeText(timeData: timerModel.workTime)
            TextBar(someTexts: "Current Time")
            TimeText(timeData: timerModel.currentTime)
            TextBar(someTexts: "Rest Time")
            TimeText(timeData: timerModel.restTime)
            HStack{
                Button(action: {
                    // 만약 타이머가 유효하지 않다면
                    if timerModel.timer == nil {
                        isWorking = true
                        timerModel.startTimer(is: isWorking)
                    } else {
                        isWorking.toggle()
                        timerModel.switchTimer(themode: isWorking)
                    }
                }, label: {
                    if timerModel.timer == nil {
                        Buttons(buttonColor: .orange, textString: "Start")
                    }else {
                        Buttons(buttonColor: .orange, textString: "Switch")
                    }
                })
                Button(action: {
                    timerModel.resetTimer()
                }, label: {
                    Buttons(buttonColor: .indigo, textString: "Stop")
                })
            }
        }.padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
