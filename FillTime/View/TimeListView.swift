//
//  TimeListView.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import SwiftUI

/// 사용자가 생성한 데이터를 리스트로 확인하는 화면
struct TimeListView: View {
    @ObservedObject var viewModel = TimeViewModel()
    
    // MARK: 리스트 전체 화면
    var body: some View {
        VStack {
            ForEach(0..<viewModel.contentArray.count) { item in
                VStack {
                    Text(viewModel.contentArray[item].title)
                    Text(viewModel.convertToTime(input: viewModel.contentArray[item].totalTime))
                }
            }
        }
    }
}

#Preview {
    TimeListView()
        .environmentObject(TimeViewModel())
}
