//
//  PrefectureNameView.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct PrefectureNameView: View {
    @ObservedObject var viewModel: TravelRecordViewModel
    let prefecture: Prefecture
    @State var isButtonTapped: Bool

    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Button(action: {
                isButtonTapped.toggle()
                if isButtonTapped {
                    viewModel.didTapButton(buttonStatus: .selected, prefecture: prefecture)
                } else {
                    viewModel.didTapButton(buttonStatus: .notSelected, prefecture: prefecture)
                }
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
        PrefectureNameView(viewModel: TravelRecordViewModel(), prefecture: Prefecture.iwate, isButtonTapped: true)
    }
}
