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
        NavigationView {
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(viewModel.prefectures) { prefecture in
                            PrefectureNameView(viewModel: viewModel, prefecture: prefecture)
                                .padding(.horizontal, 16)
                        }
                    }
                }
            }
            .navigationTitle("どの都道府県に行った？")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TravelRecordScreen_Previews: PreviewProvider {
    static var previews: some View {
        TravelRecordScreen()
    }
}
