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
                    Text(winner.description).foregroundColor(Color.gray).lineLimit(nil)
                    Button(action: {
                        self.openLink()
                    }) {
                        Text("Read more on Wiki")
                    }
                }.padding()
            }
            Spacer()
        }.navigationBarTitle("Winners", displayMode: .inline)
    }
    
    private func openLink() {
        if let link = winner.link {
            UIApplication.shared.open(URL(string: link)!, options: [:], completionHandler: nil)
        }
    }
}

struct WinnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WinnerDetailView(winner: Winner(id: 1, fullName: "FEW", imageName: "FEWF", description: "FEWF", link: "FEWFWE"))
    }
}
