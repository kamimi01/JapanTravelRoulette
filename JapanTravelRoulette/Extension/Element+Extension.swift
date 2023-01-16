//
//  Element+Extension.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/17.
//

import Foundation

extension Array {
    subscript (safe index: Index) -> Element? {
        if indices.contains(index) {
            return self[index]
        }
        print("index out of range, so retrun nil")
        return nil
    }
}
