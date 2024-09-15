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
            conditionalTimeList
        }
    }
    
    // MARK: ConditionalTimeList
    /// 데이터 유무에 따른 컨텐츠를 보여주는 화면
    @ViewBuilder
    var conditionalTimeList: some View {
        
        var dataHasExist: Bool {
            !viewModel.timeList.isEmpty
        }
        
        if dataHasExist {
            TimeListCellWithController
        } else {
            TextBox(content: "It's Empty")
        }
    }
    
    // MARK: TimeListCellWithController
    /// 재생버튼이 있는 데이터셀을 보여주는 리스트 화면
    @ViewBuilder
    var TimeListCellWithController: some View {
        
        ForEach(viewModel.timeList) { cell in
            HStack {
                // Informations
                VStack {
                    Text(cell.title)
                    Text("\(cell.totalSeconds)")
                }
                .padding()
                .background(.white)
                
                // Controller Button
                Button(action: {}, label: {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                })
            }
            .padding()
            .background(.gray)
        }
        
    }
}

#Preview {
    TimeListView()
}
