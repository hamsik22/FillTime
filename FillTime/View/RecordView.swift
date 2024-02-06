//
//  RecordView.swift
//  FillTime
//
//  Created by 황석현 on 2/6/24.

import SwiftUI

struct RecordView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        VStack {
            TextBar(someTexts: "Total Work Time is...")
            TimeText(timeData: UserDefaults.standard.integer(forKey: Defaluts.userData.rawValue))
        }
    }
}

#Preview {
    RecordView(timeVM: TimeViewModel(timeModel: TimeModel()))
}

