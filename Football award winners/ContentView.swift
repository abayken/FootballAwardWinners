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
                    AwardView(awardName: "France football")
                    AwardView(awardName: "FIFA")
                    AwardView(awardName: "UEFA")
                }.padding(.leading, 16)
                
                List (service.awardWinners) { winner in
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
