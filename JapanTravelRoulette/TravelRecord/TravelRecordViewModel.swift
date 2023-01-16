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

    func didTapButton(buttonStatus: ButtonStatus) {
        switch buttonStatus {
        case .selected:
            saveSelectedPrefecture()
        case .notSelected:
            deleteSelectedPrefecture()
        }
    }

    private func saveSelectedPrefecture() {
        print("保存をする")
    }

    private func deleteSelectedPrefecture() {
        print("削除する")
    }
}
