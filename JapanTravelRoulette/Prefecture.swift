//
//  Prefecture.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import Foundation

enum Prefecture: String, CaseIterable, Identifiable {
    case iwate = "岩手県"
    case kanagawa = "神奈川県"

    var id: String { rawValue }
}
