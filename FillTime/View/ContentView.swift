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
    var model = TimeModel()
    
    var body: some View {
        VStack{
            Text("Hello, Users!")
            Button(action: {
                model.startLoopTimer()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel())
    }
}
