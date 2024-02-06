//
//  RecordView.swift
//  FillTime
//
//  Created by 황석현 on 2/6/24.

import SwiftUI

struct RecordView: View {
    
    @ObservedObject var viewModel: TimeViewModel
    
    var body: some View {
        VStack {
            TextBar(someTexts: "TotalTime")
            // TODO: forKey에 접근하는 구조 변형 - 뷰가 모델에 직접 관여중
            TimeText(timeData: viewModel.defaults.integer(forKey: "UserData"))
        }
    }
}

#Preview {
    RecordView(viewModel: TimeViewModel(timeModel: TimeModel(defaults: UserDefaults())))
}

