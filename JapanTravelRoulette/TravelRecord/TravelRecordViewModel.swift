//
//  TravelRecordViewModel.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import Foundation

class TravelRecordViewModel: ObservableObject {
    @Published var prefectures = Prefecture.allCases
}
