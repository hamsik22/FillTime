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
        
        let timeModel = TimeModel()
        let timeVM = TimeViewModel(timeModel: timeModel)
        
        WindowGroup {
            ContentView(timeVM: timeVM)
        }
    }
}
