//
//  TimeSelector.swift
//  FillTime
//
//  Created by 황석현 on 3/4/24.
//

import SwiftUI


struct TimerSetting: View {
    
    // TODO: 데이터구조 수정필요
    var title: String
    var arrayRange: [Int]
    @State var selection: Int
    
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            HStack {
                Picker("Picker", selection: $selection) {
                    ForEach(arrayRange, id: \.self) { item in
                        Text("\(item)")
                            .tag(item)
                            .font(.title)
                    }
                }
            }
            .pickerStyle(.wheel)
            .frame(height: 100)
            .padding(.horizontal, 10)
            Text("선택 : \(selection)")
        }.padding()
    }
}

#Preview {
    TimerSetting(title: "Title", arrayRange: Array(1...5), selection: 5)
}
