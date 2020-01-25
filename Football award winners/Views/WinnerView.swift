//
//  WinnerView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

struct WinnerView: View {
    let winner: Winner
    
    var body: some View {
        HStack {
            Text(winner.yearWon).font(.largeTitle)
            VStack(alignment: .leading) {
                Text(winner.fullName).font(.title)
                Text(winner.description).font(.subheadline)
            }.padding(.leading, 8)
        }
        
    }
}

struct WinnerView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerView(winner: Winner(id: 1, fullName: "Lionel Messi", imageName: "messi", yearWon: "2019", description: "From another planet"))
    }
}
