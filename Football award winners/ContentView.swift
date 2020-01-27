//
//  ContentView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var service: WinnerService = WinnerService()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    AwardView(awardName: "France football", delegate: self, awardId: 1)
                    AwardView(awardName: "FIFA", delegate: self, awardId: 2)
                    AwardView(awardName: "UEFA", delegate: self, awardId: 3)
                }.padding(.leading, 16)
                
                List (service.awardWinners) { winner in
                    NavigationLink(destination: WinnerDetailView(winner: winner)) {
                        WinnerView(winner: winner)
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
