//
//  FillTimeApp.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

@main
struct FillTimeApp: App {
    
    var body: some Scene {
        
        let systemModel = SystemModel()
        let systemVM = SystemViewModel(systemModel: systemModel)
        let timeModel = TimeModel()
        let timeVM = TimeViewModel(timeModel: timeModel)
        
        WindowGroup {
            ContentView(timeVM: timeVM, sysyemVM: systemVM)
        }
    }
}
