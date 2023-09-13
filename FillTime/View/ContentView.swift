//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TimerView(viewModel: TimerModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
