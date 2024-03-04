//
//  SystemViewModel.swift
//  FillTime
//
//  Created by 황석현 on 3/4/24.
//

import Foundation

class SystemViewModel: ObservableObject {
   @Published var systemContentArray = [SystemModel(contentTitle: SystemText.pomodoro.title, contentDescription: SystemText.pomodoro.description),
                                        SystemModel(contentTitle: SystemText.timeBoxing.title, contentDescription: SystemText.timeBoxing.description)]
}
