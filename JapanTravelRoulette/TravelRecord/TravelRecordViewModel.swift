//
//  TravelRecordViewModel.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import Foundation

enum ButtonStatus {
    case selected
    case notSelected
}

let savedPrefectureKey = "prefectures"

class TravelRecordViewModel: ObservableObject {
    @Published var prefectures = Prefecture.allCases

    func didTapButton(buttonStatus: ButtonStatus, prefecture: Prefecture) {
        switch buttonStatus {
        case .selected:
            saveSelectedPrefecture(prefecture: prefecture)
        case .notSelected:
            deleteSelectedPrefecture(prefecture: prefecture)
        }
    }

    private func saveSelectedPrefecture(prefecture: Prefecture) {
        print("保存をする", prefecture)
        // 現在の値を取得する
        guard var prefectures = UserDefaults.standard.array(forKey: savedPrefectureKey) as? [String] else {
            // 新しく追加する
            UserDefaults.standard.set([prefecture.rawValue], forKey: savedPrefectureKey)
            return
        }
        // 追加する
        prefectures.append(prefecture.rawValue)
        // 保存する
        UserDefaults.standard.set(prefectures, forKey: savedPrefectureKey)
        print("保存時のprefectures:", prefectures)
    }

    private func deleteSelectedPrefecture(prefecture: Prefecture) {
        print("削除する", prefecture)
        // 現在の値を取得する
        guard var prefectures = UserDefaults.standard.array(forKey: savedPrefectureKey) as? [String] else {
            return
        }
        // 削除する
        prefectures.removeAll(where: {$0 == prefecture.rawValue})
        // 保存する
        UserDefaults.standard.set(prefectures, forKey: savedPrefectureKey)
        print("削除時のprefectures:", prefectures)
    }

    func isSavedPrefecture(prefecture: Prefecture) -> Bool {
        // 現在の値を取得する
        guard let prefectures = UserDefaults.standard.array(forKey: savedPrefectureKey) as? [String] else {
            return false
        }
        if prefectures.contains(prefecture.rawValue) {
            return true
        } else {
            return false
        }
    }
}
