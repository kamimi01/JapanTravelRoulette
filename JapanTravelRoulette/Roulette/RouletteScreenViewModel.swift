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
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.rouletteStatus = .endRolling
        }
        
        // 行ったことがある都道府県を取得する
        guard let prefectureNames = UserDefaults.standard.array(forKey: savedPrefectureKey) as? [String] else {
            // 取得できなかったら全都道府県からランダムで選択する
            let selectedIndex = Int.random(in: 1..<48)
            selectedPrefecture = Prefecture.allCases[safe: selectedIndex]
            return
        }
        let prefectures: [Prefecture] = prefectureNames.map { prefectureName in
            Prefecture.allCases.filter { $0.rawValue == prefectureName }.first!
        }
        // 行ったことのない都道府県を取得
        var wannaGoPrefectures: [Prefecture] {
            var result = [Prefecture]()
            for prefecture in Prefecture.allCases {
                // 全ての都道府県をチェックして、行ったことのある都道府県が含まれていなかったら、appendする
                if !prefectures.contains(prefecture) {
                    result.append(prefecture)
                }
            }
            return result
        }
        let numOfPrefectures = wannaGoPrefectures.count
        if numOfPrefectures == 0 {
            selectedPrefecture = nil
            return
        }
        // 行ったことのない都道府県からランダムで選択する
        let selectedIndex = Int.random(in: 1..<numOfPrefectures + 1)
        guard let prefecture = wannaGoPrefectures[safe: selectedIndex] else {
            return
        }
        selectedPrefecture = prefecture
    }
}
