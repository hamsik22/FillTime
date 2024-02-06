//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.scenePhase) private var scenePhase
    @ObservedObject var timeVM: TimeViewModel
    
    
    var body: some View {
        
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            TimerView(viewModel: timeVM)
                .onChange(of: scenePhase) { phase in
                    switch phase {
                    case .background:
                        print("TimerView Entered Background!")
                        timeVM.checkPhaseTime(into: false)
                    case .inactive:
                        print("TimerView Entered Inactive!")
                    case .active:
                        print("TimerView Entered Active!")
                        timeVM.checkPhaseTime(into: true)
                        timeVM.caculateInactivateTimes(isWorking: timeVM.isWorking)
                    @unknown default:
                        print("TimerView Entered Unknown Phase!")
                    }
                }
            .tabItem { Text("Timer View") }.tag(1)
            
            RecordView(viewModel: timeVM)
            .tabItem { Text("Record View") }.tag(2)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
