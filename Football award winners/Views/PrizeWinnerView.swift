//
//  PrizeWinnerView.swift
//  Football award winners
//
//  Created by Abay on 27.01.2020.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

// 🥈

struct PrizeWinnerView: View {
    
    let prizeWinner: PrizeWinner
    
    var body: some View {
        HStack {
            Text(prizeWinner.place == 2 ? "🥈" : "🥉")
            Text(prizeWinner.name)
            Spacer()
        }.padding(.top, 8)
    }
}

struct PrizeWinnerView_Previews: PreviewProvider {
    static var previews: some View {
        PrizeWinnerView(prizeWinner: PrizeWinner(id: 1, place: 2, name: "Gareth Bale"))
    }
}
