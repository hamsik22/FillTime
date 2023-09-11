//
//  LargeTimeTextView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TimeTextView: View {
    private var textSize: CGFloat
    
    init(textSize: CGFloat) {
        self.textSize = textSize
    }
    
    var body: some View {
        Text("00:00:00")
            .padding(20)
            .font(.system(size: textSize))
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .cornerRadius(20)
            .padding(.horizontal, 10)
    }
}

struct LargeTimeTextView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTextView(textSize: 50)
    }
}
