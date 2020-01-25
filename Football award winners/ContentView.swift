//
//  ContentView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var winners = [Winner(id: 1, fullName: "Leo Messi", imageName: "leo", yearWon: "2019", description: "Best in the world"),
                   Winner(id: 2, fullName: "Luka Modric", imageName: "lula", yearWon: "2018", description: "The yeat another genius")
    ]
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    AwardView(awardName: "France football")
                    AwardView(awardName: "FIFA")
                    AwardView(awardName: "UEFA")
                }
                
                List (winners) { winner in
                    WinnerView(winner: winner)
                }.navigationBarTitle("Winners")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
