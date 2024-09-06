//
//  TimeModel.swift
//  FillTime
//
//  Created by 황석현 on 8/23/24.
//

import Foundation

struct TimeModel {
    var contentArray: [ContentModel] = [ContentModel(title: "Mock1", totalTime: 0), 
                                        ContentModel(title: "Mock2", totalTime: 30),
                                        ContentModel(title: "Mock3", totalTime: 60)]
}

struct ContentModel {
    var title: String
    var totalTime: Int
}
