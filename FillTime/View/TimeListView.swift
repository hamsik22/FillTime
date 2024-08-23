//
//  TimeListView.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import SwiftUI

/// 사용자가 생성한 데이터를 리스트로 확인하는 화면
struct TimeListView: View {
    // TODO: 데이터 추가하는 화면 ViewBuilder로 구현하기
    // TODO: 상단에 데이터추가 버튼 만들기
    
    @EnvironmentObject var viewModel : TimeViewModel
    @State var inputTitle = ""
    @State var inputDescription = ""
    @State var isShowingAddDataView = false
    
    var body: some View {
        VStack {
            Button(action: {
                isShowingAddDataView = true
            }, label: {
                Image(systemName: "plus.circle.fill")
            })
            if viewModel.dataList.isEmpty {
                Text("It's Empty!")
                    .onAppear { viewModel.fetchData() }
            } else {
                dataCell
                    .onAppear { viewModel.fetchData() }
            }
        }
        .sheet(isPresented: $isShowingAddDataView, content: {
            addDataModal
        })
    }
    
    @ViewBuilder
    var dataCell: some View {
        ForEach(viewModel.dataList) { item in
            Text(item.title)
        }
    }
    
    var addDataModal: some View {
        VStack {
            TextField("제목 입력", text: $inputTitle, prompt: Text("제목을 입력하세요"))
            TextField("제목 입력", text: $inputDescription, prompt: Text("설명을 입력하세요"))
            Button(action: {
                // TODO: 데이터 저장(제목, 설명)
                viewModel.saveData(title: inputTitle, description: inputDescription)
                isShowingAddDataView = false
                inputTitle = ""
                inputDescription = ""
                viewModel.fetchData()
            }, label: {
                Text("Done")
                    .background(.gray).opacity(0.2)
            })
            Button(action: {
                // TODO: 취소 후 리스트화면으로
                isShowingAddDataView = false
                inputTitle = ""
                inputDescription = ""
                viewModel.fetchData()
            }, label: {
                Text("Cancel")
                    .background(.gray).opacity(0.2)
            })
        }
    }
}

#Preview {
    TimeListView()
}
