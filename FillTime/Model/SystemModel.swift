//
//  UserData.swift
//  FillTime
//
//  Created by 황석현 on 2/5/24.
//

import Foundation

struct FirestoreData {
    
    var workTime: Int
    var restTime: Int
    var dateLog: Date
    // TODO: make UID property
    func getDictionary() -> [String:Any] {
        return [
            "workTime" : workTime,
            "restTime" : restTime,
            "dateLog" : dateLog
            // TODO: UID property
    ]}
}
