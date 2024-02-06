//
//  SystemViewModel.swift
//  FillTime
//
//  Created by 황석현 on 2/6/24.
//

import Foundation

class SystemViewModel: ObservableObject {
    
    private var systemModel: SystemModel
    
    init(systemModel: SystemModel) {
        self.systemModel = systemModel
    }
}

