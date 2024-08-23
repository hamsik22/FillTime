//
//  FillTimeApp.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

@main
struct FillTimeApp: App {
    
    @StateObject var viewModel = TimeViewModel()
    
    var body: some Scene {
        
        WindowGroup {
                ContentView()
                    .environmentObject(viewModel)
        }
    }
}
