//
//  EditView.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import SwiftUI

/// 새로운 항목을 추가하는 뷰
///
/// 입력 정보 : TimeData
///
///     - title: String
///     - description: String
struct EditView: View {
    // TODO: 해당 화면을 TimeListView의 ViewBuilder로 만들기
    
    @EnvironmentObject var viewModel : TimeViewModel
    @State var inputTitle = ""
    @State var inputDescription = ""
    
    var body: some View {
        VStack {
            TextField("Input Title", text: $inputTitle, prompt: Text("Input Title"))
                .background(.gray).opacity(0.2)
            TextField("Input Title", text: $inputDescription, prompt: Text("Input Description"))
                .background(.gray).opacity(0.2)
            
            Button(action: {
                // TODO: 데이터 저장(제목, 설명)
                viewModel.saveData(title: inputTitle, description: inputDescription)
            }, label: {
                Text("Done")
                    .background(.gray).opacity(0.2)
            })
            Button(action: {
                // TODO: 취소 후 리스트화면으로
            }, label: {
                Text("Cancel")
                    .background(.gray).opacity(0.2)
            })
        }
        .padding()
    }
}

#Preview {
    EditView()
        .environmentObject(TimeViewModel())
}
