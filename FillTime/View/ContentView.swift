//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: TimeViewModel
    
    var body: some View {
        VStack {
            Text(SystemText.pomodoro.title)
            Text("\(viewModel.model.time1)")
            HStack {
                Button(action: {
                    viewModel.startTimer()
                }, label: {
                    Text("Start")
                })
                Button(action: {
                    
                }, label: {
                    Text("Button")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: TimeViewModel())
    }
}
