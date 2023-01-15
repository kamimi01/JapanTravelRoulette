//
//  RouletteScreen.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct RouletteScreen: View {
    @ObservedObject var viewModel = RouletteScreenViewModel()

    var body: some View {
        VStack {
            Button(action: {
                viewModel.startRoulette()
            }) {
                 Text("スタート")
            }
            switch viewModel.rouletteStatus {
            case .notRolling:
                Text("ルーレットを回してね")
            case .rolling:
                LottieView(animationType: .oneTwoThree)
                    .frame(width: 100, height: 100)
            case .endRolling:
                Text("岩手県")
            }
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
