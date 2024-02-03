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
            Text("work Time : \(viewModel.workTime)")
            Text("Current Time : \(viewModel.currentTime)")
            Text("Rest Time : \(viewModel.restTime)")
            HStack {
                Button(action: {
                    viewModel.isWorking.toggle()
                    viewModel.startTimer(isWorking: viewModel.isWorking)
                }, label: {
                    if viewModel.workTime == 0 {
                        Buttons(buttonColor: .blue, textString: "Start")
                    } else { Buttons(buttonColor: .blue, textString: "Switch")}
                })
                Button(action: {
                    viewModel.stopTimer()
                }, label: {
                    Buttons(buttonColor: .orange, textString: "Stop")
                })
            }
        }.padding()
            .background(Color.backGround)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimeViewModel(timeModel: TimeModel(timer: Timer(), workTime: 0, currentTime: 0, restTime: 0, isWorking: true, appBackgroundEnterTime: Date(), appActiveEnterTime: Date())))
    }
}
