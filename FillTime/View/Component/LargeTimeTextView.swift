//
//  LargeTimeTextView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct LargeTimeTextView: View {
    var body: some View {
        Text("00:00:00")
            .padding(20)
            .font(.system(size: 50))
            .frame(maxWidth: .infinity)
            .background(.yellow)
    }
}

struct LargeTimeTextView_Previews: PreviewProvider {
    static var previews: some View {
        LargeTimeTextView()
    }
}
