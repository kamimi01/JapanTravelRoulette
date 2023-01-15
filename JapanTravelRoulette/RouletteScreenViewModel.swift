//
//  RouletteScreenViewModel.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/16.
//

import Foundation

class RouletteScreenViewModel: ObservableObject {
    @Published var isStoppedRoulette = false
    @Published var selectedPrefecture: Prefecture? = nil

    func startRoulette() {
        // ランダムな数字を一つ選ぶ
        // 3秒後に表示する
    }
}
