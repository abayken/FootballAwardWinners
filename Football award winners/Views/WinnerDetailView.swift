//
//  WinnerDetailView.swift
//  Football award winners
//
//  Created by Abay on 27.01.2020.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

struct WinnerDetailView: View {
    
    let winner: Winner
    
    var body: some View {
        VStack {
            
            ScrollView {
                VStack {
                    Image(winner.imageName).resizable().frame(width: 100, height: 150).aspectRatio(contentMode: .fit).cornerRadius(8)
                    Text(winner.fullName)
                    Text(winner.description).foregroundColor(Color.gray).padding().lineLimit(nil)
                    Button(action: {
                        
                    }) {
                        Text("Read more on Wiki")
                    }
                }
            }
            Spacer()
        }.navigationBarTitle("Winners", displayMode: .inline)
    }
}

struct WinnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerDetailView(winner: Winner(id: 1, fullName: "Lionel Messi", imageName: "leo", yearWon: 2019, description: "JiofjewjfoweofJiofjewjfoweofJiofjewjfoweofJiofjewjfoweofJiofjewjfoweofJiofjewjfoweof", award: 12))
    }
}
