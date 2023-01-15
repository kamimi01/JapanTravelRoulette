//
//  ContentView.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RouletteScreen()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("次どこ行く？")
                }
            TravelRecordScreen()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("どこ行った？")
                }
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
