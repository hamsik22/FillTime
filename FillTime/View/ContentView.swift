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
        TabView {
            TimerView(timeVM: timeVM)
                .onChange(of: scenePhase) { phase in
                    switch phase {
                    case .background:
                        print("TimerView Entered Background!")
                        timeVM.checkPhaseTime(into: false)
                    case .inactive:
                        print("TimerView Entered Inactive!")
                        if timeVM.timer.isValid {
                            if UserDefaults.standard.integer(forKey: Defaluts.userData.rawValue) != 0 {
                                UserDefaults.standard.set((timeVM.recordedTime), forKey: Defaluts.userData.rawValue)
                            } else {
                                UserDefaults.standard.set((timeVM.workTime), forKey: Defaluts.userData.rawValue)
                            }
                        }
                    case .active:
                        print("TimerView Entered Active!")
                        timeVM.checkPhaseTime(into: true)
                        timeVM.caculateInactivateTimes(isWorking: timeVM.isWorking)
                    @unknown default:
                        print("TimerView Entered Unknown Phase!")
                    }
                }
                .tabItem {
                    VStack{
                        Image(systemName: "timer.circle.fill")
                        Text("Timer View")
                    }
                }.tag(1)
            
            RecordView(timeVM: timeVM)
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet.clipboard.fill")
                        Text("Record View")
                    }
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel(timeModel: TimeModel()))
    }
}
