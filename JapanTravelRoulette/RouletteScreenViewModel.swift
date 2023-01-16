//
//  RouletteScreenViewModel.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/16.
//

import Foundation

enum RouletteStatus {
    case notRolling
    case rolling
    case endRolling
}

class RouletteScreenViewModel: ObservableObject {
    @Published var rouletteStatus = RouletteStatus.notRolling
    @Published var selectedPrefecture: Prefecture? = nil

    func startRoulette() {
        rouletteStatus = .rolling
        // ランダムな数字を一つ選ぶ
        let selectedIndex = Int.random(in: 1..<48)
        selectedPrefecture = Prefecture.allCases[safe: selectedIndex]

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.rouletteStatus = .endRolling
        }
    }
}
