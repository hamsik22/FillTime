//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: TimeViewModel
    
    var body: some View {
            TabView {
                TimeListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                    }
                    .onAppear { viewModel.fetchData() }
                
                CalendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                
                PreferenceView()
                    .tabItem {
                        Image(systemName: "gearshape")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TimeViewModel())
    }
}
