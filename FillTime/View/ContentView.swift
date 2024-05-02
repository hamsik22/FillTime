//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

// TODO: 2.0버전에 맞는 UI 구성
struct ContentView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    
    var body: some View {
        TimeSettingView(timeVM: timeVM)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel())
    }
}
