//
//  BottomMenu.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 25/08/22.
//

import SwiftUI

struct BottomMenu: View {
    var body: some View {
        TabView {
            Home()
                .tabItem(){
                    Image(systemName: "cross.fill")
                    Text("Today")
                }
            History()
                .tabItem(){
                    Image(systemName: "clock.fill")
                    Text("History")
                }
        }
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}
