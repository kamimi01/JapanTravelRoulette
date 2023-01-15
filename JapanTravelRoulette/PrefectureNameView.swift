//
//  PrefectureNameView.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct PrefectureNameView: View {
    let prefecture: Prefecture
    @State private var isButtonTapped = false

    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Button(action: {
                isButtonTapped.toggle()
            }) {
                if isButtonTapped {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                } else {
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(width: 50, height: 50)
            Text(prefecture.rawValue)
                .font(.title)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

struct PrefectureNameView_Previews: PreviewProvider {
    static var previews: some View {
        PrefectureNameView(prefecture: Prefecture.iwate)
    }
}
