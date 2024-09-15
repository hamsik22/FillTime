//
//  ContentView.swift
//  FillTime
//
//  Created by 황석현 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView(selection: .constant(1), content:  {
            
            // MARK: TimeList
            TimeListView()
                .tabItem {
                Label(
                    title: { Text("List") },
                    icon: { Image(systemName: "42.circle") }
                )
            }.tag(1)
            
            // MARK: Calendar
            CalendarView()
                .tabItem {
                Label(
                    title: { Text("Calendar") },
                    icon: { Image(systemName: "42.circle") }
                )
            }.tag(2)
            
            // MARK: Setting
            SettingView()
                .tabItem {
                Label(
                    title: { Text("Setting") },
                    icon: { Image(systemName: "32.circle") }
                )
            }.tag(3)
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
