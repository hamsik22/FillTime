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
            Text("Time : \(viewModel.currentTime)")
            Button(action: {
                viewModel.startTimer()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }.padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimeViewModel(timeModel: TimeModel(timer: Timer(), workTime: 0, currentTime: 0, restTime: 0)))
    }
}
