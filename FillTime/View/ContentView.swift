//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.scenePhase) private var scenePhase
    @ObservedObject var viewModel: TimeViewModel
    
    
    var body: some View {
        TimerView(viewModel: viewModel)
            .onChange(of: scenePhase) { phase in
                switch phase {
                case .background:
                    print("TimerView Entered Background!")
                    // TODO: 백그라운드 진입 시간 측정
                case .inactive:
                    print("TimerView Entered Inactive!")
                case .active:
                    print("TimerView Entered Active!")
                    // TODO: 액티브 진입 시간 측정 + 계산
                @unknown default:
                    print("TimerView Entered Unknown Phase!")
                }
            }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
