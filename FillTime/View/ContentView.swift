//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

// TODO: 2.0버전에 맞는 UI 구성
struct ContentView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack{
            
            // TODO: 지워야 할 부분
            Text("ViewModel : \(timeVM.workTime)")
                .font(.title)
            // TODO: 지워야 할 부분
            Text("Model : \(timeVM.model.workTime)")
                .font(.title)
            // MARK: 피커를 활용해서 뷰모델과 모델에 데이터변화를 확인
            Picker("작업시간", selection: $timeVM.workTime) {
                ForEach(SystemData.pomodoro.timeRange, id: \.self) { item in
                    Text("\(item)")
                        .tag(item)
                }
            }.pickerStyle(.wheel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel())
    }
}
