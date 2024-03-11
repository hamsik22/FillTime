//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            // TODO: 저장된 데이터만큼 반복하여 뷰를 생성하여 Selection을 활용하여 선택한 뷰와 연관된 뷰로 이동하게끔 구현
            NavigationLink {
                PomodoroSettingView(timeVM: timeVM)
            } label: {
                TechniqueCard(title: SystemText.pomodoro.title, description: SystemText.pomodoro.description)
                .tint(.black)
            }
            NavigationLink {
                Text("It's Empty!")
            } label: {
                TechniqueCard(title: SystemText.timeBoxing.title, description: SystemText.timeBoxing.description)
                    .tint(.black)
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel())
    }
}
