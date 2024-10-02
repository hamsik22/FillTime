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
    @State private var isAddingContent = false
    @State private var contentTitle = ""
    @State private var contentDescription = ""
    
    // MARK: 리스트 전체 화면
    var body: some View {
        VStack {
            topBar
            
            // TODO: 데이터 변화를 감지하여 실시간으로 보여줘야함.
            conditionalTimeList
        }
        .sheet(isPresented: $isAddingContent, onDismiss: { isAddingContent = false }, content: {
            AddCotentModal
        })
    }
    
    // MARK: TopBar
    /// 상단의 어플마크와 데이터추가 버튼
    @ViewBuilder
    var topBar: some View {
        HStack {
            Text("FillTime")
                .font(.largeTitle)
            
            Spacer()
            
            Button(action: {
                // 데이터를 추가하는 모달뷰 표시
                isAddingContent = true
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .bold()
            })
        }
        .padding(.horizontal, 20)
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
            // TODO: 데이터가 존재하지 않을 때 표시할 화면
            Text("It's Empty")
        }
    }
    
    // MARK: TimeListCellWithController
    /// 재생버튼이 있는 데이터셀을 보여주는 리스트 화면
    @ViewBuilder
    var TimeListCellWithController: some View {
        
        ForEach(viewModel.timeList) { item in
            HStack {
                // Informations
                VStack(alignment: .leading, spacing: 10) {
                    Text(item.title)
                        .font(.system(size: 24))
                    Text("D + \(viewModel.timeFormatt(input: item.totalSeconds))")
                        .font(.system(size: 24))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                // Controller Button
                Button(action: {
                    // TODO: 타이머 실행
                    if viewModel.timer.isValid {
                        viewModel.stopTimer()
                    } else {
                        viewModel.startTimer()
                    }
                }, label: {
                    Image("PlayButton")
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 10)
                })
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 20))
            .padding(.horizontal, 15)
        }
        
    }
    
    // MARK: AddContentModal
    /// 컨텐츠를 추가하는 모달 화면
    ///
    ///  **개선점** :
    /// - 버튼 하나에 너무 많은 동작이 포함되어 있다.
    /// - 데이터 Fetch 시점이 버튼에 있다.
    @ViewBuilder
    var AddCotentModal: some View {
        VStack {
            TextField("제목 입력", text: $contentTitle, prompt: Text("제목을 입력하세요"))
            
            TextField("설명 입력", text: $contentDescription, prompt: Text("설명을 입력하세요"))
            
            Button(action: {
                // 저장하기
                viewModel.addData(title: contentTitle)
                print("Data \(contentTitle) Saved!")
                isAddingContent = false
                contentTitle = ""
                contentDescription = ""
                viewModel.fetchData()
            }, label: {
                Text("저장")
            })
            
            Button(action: {
                // 취소하기
                contentTitle = ""
                contentDescription = ""
                isAddingContent = false
                viewModel.fetchData()
            }, label: {
                Text("취소")
            })
        }
    }
}

#Preview {
    TimeListView()
}
