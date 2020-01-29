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
    
    let yearWon: Int
    
    var body: some View {
        HStack {
            Image(winner.imageName).resizable().aspectRatio(contentMode: ContentMode.fit).cornerRadius(6).frame(width: 120, height: 160)
            Text(String(yearWon)).font(.system(size: 18)).bold()
            VStack(alignment: .leading) {
                Text(winner.fullName).font(.system(size: 20))
                Text(winner.description).font(.system(size: 14)).foregroundColor(Color(UIColor.darkGray)).lineLimit(3)
            }.padding(.leading, CGFloat(8))
        }
        
    }
}

struct WinnerView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerView(winner: Winner(id: 1, fullName: "FEWF", imageName: "FEWF", description: "FEW", link: "FEWFWEF"), yearWon: 11)
    }
}
