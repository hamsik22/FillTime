//
//  TimerView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack {
            Text("WorkTime")
            Text("00:00:00")
            Text("Current Time")
            Text("00:00:00")
            Text("RestTime")
            Text("00:00:00")
            HStack {
                Button { } label: { Text("Start") }
                Button { } label: { Text("Stop") }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
