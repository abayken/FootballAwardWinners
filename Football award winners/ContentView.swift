//
//  ContentView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI
import Combine
import WebKit
struct ContentView: View {
    
    @ObservedObject var service: WinnerService = WinnerService()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    AwardView(awardName: "Baloon Door", delegate: self, awardId: 1)
                    AwardView(awardName: "FIFA The Best", delegate: self, awardId: 2)
                    AwardView(awardName: "UEFA", delegate: self, awardId: 3)
                }.padding(.leading, 16)
                
                List (service.awards) { award in
                    VStack {
                        NavigationLink(destination: WinnerDetailView(winner: award.winner)) {
                            WinnerView(winner: award.winner, yearWon: award.year)
                        }
                     
                        ForEach(0 ..< award.prize.count) {
                            PrizeWinnerView(prizeWinner: award.prize[$0])
                        }
                        
                    }
                }.navigationBarTitle("Winners")
                
            }
        }
    }
}

extension ContentView: AwardAction {
    
    func awardPressed(id: Int) {
        service.updateWinners(by: id)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
