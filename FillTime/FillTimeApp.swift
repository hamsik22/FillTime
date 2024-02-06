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
        
        let standard = UserDefaults.standard
        
        let systemModel = SystemModel()
        let timeModel = TimeModel(defaults: standard)
        let timeVM = TimeViewModel(timeModel: timeModel)
        WindowGroup {
            ContentView(timeVM: timeVM)
        }
    }
}
