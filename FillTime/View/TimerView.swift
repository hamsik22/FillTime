//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            TextBar(someTexts: SystemText.workTime.rawValue)
            TimeText(timeData: timeVM.workTime)
            TextBar(someTexts: "Current Time")
            TimeText(timeData: timeVM.currentTime)
            TextBar(someTexts: "Rest Time")
            TimeText(timeData: timeVM.restTime)
            HStack {
                Button(action: {
                    timeVM.isWorking.toggle()
                    timeVM.startTimer(isWorking: timeVM.isWorking)
                }, label: {
                    if timeVM.isWorking {
                        Buttons(buttonColor: .blue, textString: "Rest!")
                    } else {
                        Buttons(buttonColor: .blue, textString: "Work!")
                    }
                })
                Button(action: {
                    timeVM.resetTimer()
                }, label: {
                        Buttons(buttonColor: .orange, textString: "Reset")
                })
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timeVM: TimeViewModel(timeModel: TimeModel()))
    }
}
