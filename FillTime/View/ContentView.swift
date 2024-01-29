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
                case .inactive:
                    print("TimerView Entered Inactive!")
                case .active:
                    print("TimerView Entered Active!")
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
