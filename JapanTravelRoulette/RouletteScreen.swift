//
//  RouletteScreen.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct RouletteScreen: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                 Text("スタート")
            }
            Text("ルーレットを回した結果")
            HStack {
                Image("")
                Image("")
            }
        }
    }
}

struct RouletteScreen_Previews: PreviewProvider {
    static var previews: some View {
        RouletteScreen()
    }
}
