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
    
    @State
    private var awardList = [
        AwardViewModel(awardName: "Baloon Door", id: 1, isSelected: true),
        AwardViewModel(awardName: "FIFA The Best", id: 2, isSelected: false),
        AwardViewModel(awardName: "UEFA", id: 3, isSelected: false)
    ]
    
    @State
    var selectedPosition = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {                    
                    ForEach(awardList) { awardViewModel in
                        AwardView(awardViewModel: awardViewModel, delegate: self)
                    }
                    
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
        awardList[selectedPosition].isSelected = false
        selectedPosition = id - 1
        awardList[selectedPosition].isSelected = true
        service.updateWinners(by: id)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
