//
//  ContentView.swift
//  GetMobileClone
//
//  Created by Nguyen Tran Duy Khang on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			HomeView()
				.tabItem {
					VStack {
						Image(systemName: "house.fill")
						Text("Home")
					}
				}
			Text("Another tab")
				.tabItem {
					VStack {
						Image(systemName: "dollarsign.circle.fill")
						Text("Accounts")
					}
				}
			Text("Another tab")
				.tabItem {
					VStack {
						Image(systemName: "gearshape")
						Text("Settings")
					}
				}
			Text("Another tab")
				.tabItem {
					VStack {
						Image(systemName: "bag")
						Text("Order")
					}
				}
			Text("Another tab")
				.tabItem {
					VStack {
						Image(systemName: "map")
						Text("explore")
					}
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
