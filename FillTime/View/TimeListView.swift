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
            ForEach(viewModel.timeList) { item in
                VStack {
                    Text(item.title)
                    Text("\(item.totalSeconds)")
                }
            }
        }
    }
}

#Preview {
    TimeListView()
        .environmentObject(TimeViewModel())
}
