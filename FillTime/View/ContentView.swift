//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var timeVM: TimeViewModel
    @ObservedObject var systemVM: SystemViewModel
    
    var body: some View {
        VStack {
            NavigationLink {
                Text("It's Empty!")
            } label: {
                TimeCard(title: systemVM.systemContentArray[0].contentTitle,
                         description:systemVM.systemContentArray[0].contentDescription)
                .tint(.black)
            }
            NavigationLink {
                Text("It's Empty!")
            } label: {
                TimeCard(title: systemVM.systemContentArray[1].contentTitle, description: systemVM.systemContentArray[1].contentDescription)
                    .tint(.black)
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timeVM: TimeViewModel(), systemVM: SystemViewModel())
    }
}
