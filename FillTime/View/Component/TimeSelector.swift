//
//  TimeSelector.swift
//  FillTime
//
//  Created by 황석현 on 3/4/24.
//

import SwiftUI

struct TimeSelector: View {
    
    // TODO: 데이터구조 수정필요
    @State var selections: (Int, Int) = (0, 0)
    var hours: [Int] = Array(0...24)
    var minute: [Int] = Array(0...59)
    
    var body: some View {
        VStack {
            HStack {
                Picker("Picker", selection: $selections.0) {
                    ForEach(hours, id: \.self) { item in
                        Text("\(hours[item])")
                            .tag("\(item)")
                    }
                }
                .padding(.leading)
                
                Text("시간")
                    
                Picker("Picker", selection: $selections.1) {
                    ForEach(minute, id: \.self) { item in
                        Text("\(minute[item])")
                            .tag("\(item)")
                    }
                }
                
                Text("분")
                    .padding(.trailing)
            }
            .pickerStyle(.wheel)
            Text("\(selections.0) 시간 : \(selections.1) 분")
        }
    }
}

#Preview {
    TimeSelector()
}
