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
    }

    private func deleteSelectedPrefecture(prefecture: Prefecture) {
        print("削除する", prefecture)
    }
}
