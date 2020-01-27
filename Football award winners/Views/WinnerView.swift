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
            Image(winner.imageName).resizable().frame(width: 100, height: 150).aspectRatio(contentMode: .fit).cornerRadius(6)
            Text(String(winner.yearWon)).font(.title)
            VStack(alignment: .leading) {
                Text(winner.fullName).font(.system(size: 20))
                Text(winner.description).font(.system(size: 14)).foregroundColor(Color(UIColor.darkGray)).lineLimit(3)
            }.padding(.leading, 8)
        }
        
    }
}

struct WinnerView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerView(winner: Winner(id: 1, fullName: "few", imageName: "few", yearWon: 12, description: "fewf", award: 1))
    }
}
