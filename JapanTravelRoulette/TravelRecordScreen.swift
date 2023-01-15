//
//  TravelRecordScreen.swift
//  JapanTravelRoulette
//
//  Created by mikaurakawa on 2023/01/15.
//

import SwiftUI

struct TravelRecordScreen: View {
   @ObservedObject var viewModel = TravelRecordViewModel()

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(viewModel.prefectures) { prefecture in
                        PrefectureNameView(prefecture: prefecture)
                            .padding(.horizontal, 16)
                    }
                }
            }
        }
    }
}

struct TravelRecordScreen_Previews: PreviewProvider {
    static var previews: some View {
        TravelRecordScreen()
    }
}
