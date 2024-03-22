//
//  TimeText.swift
//  FillTime
//
//  Created by 황석현 on 3/5/24.
//

import SwiftUI

struct TimeText: View {
    
    @State var timeVM: String
    
    var body: some View {
        Text(timeVM)
            .font(.largeTitle)
    }
}

#Preview {
    TimeText(timeVM: "xx:xx:xx")
}
