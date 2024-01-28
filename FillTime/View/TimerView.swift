//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var timeModel = TimeModel()
    @State var isWorking = false
    
    
    var body: some View {
        VStack(alignment: .leading){
            TextBar(someTexts: "Work Time")
            TimeText(timeData: timeModel.workTime)
            TextBar(someTexts: "Current Time")
            TimeText(timeData: timeModel.currentTime)
            TextBar(someTexts: "Rest Time")
            TimeText(timeData: timeModel.restTime)
            HStack{
                Button(action: {
                    // 만약 타이머가 유효하지 않다면
                    if timeModel.timer == nil {
                        isWorking = true
                        timeModel.startTimer(is: isWorking)
                    } else {
                        isWorking.toggle()
                        timeModel.switchTimer(themode: isWorking)
                    }
                }, label: {
                    if timeModel.timer == nil {
                        Buttons(buttonColor: .orange, textString: "Start")
                    }else {
                        Buttons(buttonColor: .orange, textString: "Switch")
                    }
                })
                Button(action: {
                    timeModel.resetTimer()
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
