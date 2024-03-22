//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 3/12/24.
//

import SwiftUI

struct TimerView: View {
    
    @Binding var progress: Float
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            ZStack {
                TimeGaugeBar(progress: $progress)
                Text(timeVM.timeTextString)
                    .font(.system(size: 50))
                    .bold()
            }
            HStack {
                Button(action: {
                    timeVM.startWorkTime()
                }, label: {
                    StandardTextBar(input: "시작")
                })
                Button(action: {
                    timeVM.stopTimer()
                }, label: {
                    StandardTextBar(input: "종료")
                })
            }
        }
    }
}

#Preview {
    TimerView(progress: .constant(0.4), timeVM: TimeViewModel())
}
