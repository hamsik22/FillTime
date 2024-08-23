//
//  TimeViewModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

class TimeViewModel: ObservableObject {
    
    private var model = TimeModel()
    @Published var dataList:[TimeData] = []
    
    
    /// 데이터를 저장
    func saveData(title: String, description: String?) {
        // .append 메서드를 동작시키기 위함
        if model.timeData == nil {
            model.timeData = []
        }
        
        if let content = description {
            model.timeData?.append(TimeData(title: title, description: content))
        } else {
            model.timeData?.append(TimeData(title: title))
        }
        
        if let data = model.timeData {
            print("Saved Data = \(data.count)")
        } else { print("Data not Saved!") }
    }
    
    /// TimeData 리스트 업데이트
    func fetchData() {
        if let data = model.timeData {
            dataList = data
            print("Data Count = \(dataList.count)")
        } else { print("DataList Has No Data!") }
    }
}
