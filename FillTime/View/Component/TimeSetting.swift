//
//  TimeSelector.swift
//  FillTime
//
//  Created by 황석현 on 3/4/24.
//

import SwiftUI


struct TimeSetting: View {
    
    var title: String
    var arrayRange: [Int]
    @Binding var selection: Int
    
    
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
        }.padding()
    }
}

#Preview {
    TimeSetting(title: "Title", arrayRange: Array(1...5), selection: .constant(5))
}
