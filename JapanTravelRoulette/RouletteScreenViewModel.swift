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
        // ランダムな数字を一つ選ぶ
        // 3秒後に表示する
    }
}
