//
//  TitleTextView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/11.
//

import SwiftUI

struct TitleTextView: View {
    
    private var text: String
    
    init(text: String) { self.text = text }
    
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
            .padding(.horizontal, 20)
            .font(.largeTitle)
    }
}

struct TitleTextView_Previews: PreviewProvider {
    static var previews: some View {
        TitleTextView(text: "preview")
    }
}
