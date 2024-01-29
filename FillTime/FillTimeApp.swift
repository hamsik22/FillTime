//
//  FillTimeApp.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

@main
struct FillTimeApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        
        let timeModel = TimeModel(timer: Timer(), workTime: 0, currentTime: 0, restTime: 0)
        let viewModel = TimeViewModel(timeModel: timeModel)
        
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App Entered Background!")
            case .inactive:
                print("App Entered Inactive!")
            case .active:
                print("App Entered Active!")
            @unknown default:
                print("App Entered Unknown Phase!")
            }
        }
    }
}
