//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//
// TODO: 뷰 레이아웃 재구현

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var viewModel: TimeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            TextBar(someTexts: "Working Time")
            TimeText(timeData: viewModel.workTime)
            TextBar(someTexts: "Current Time")
            TimeText(timeData: viewModel.currentTime)
            TextBar(someTexts: "Rest Time")
            TimeText(timeData: viewModel.restTime)
            HStack {
                Button(action: {
                    viewModel.isWorking.toggle()
                    viewModel.startTimer(isWorking: viewModel.isWorking)
                }, label: {
                    if viewModel.isWorking {
                        Buttons(buttonColor: .blue, textString: "Rest!")
                    } else {
                        Buttons(buttonColor: .blue, textString: "Work!")
                    }
                })
                Button(action: {
                        viewModel.resetTimer()
                }, label: {
                        Buttons(buttonColor: .orange, textString: "Reset")
                })
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimeViewModel(timeModel: TimeModel()))
    }
}
