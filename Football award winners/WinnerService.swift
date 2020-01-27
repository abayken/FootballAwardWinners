//
//  WinnerService.swift
//  Football award winners
//
//  Created by Abay on 27.01.2020.
//  Copyright © 2020 football. All rights reserved.
//

import Foundation
import Combine


class WinnerService: ObservableObject {
    
    @Published var awardWinners: [Winner] = []
    
    
    
    init() {
        fetch()
    }
    
    private func fetch(by awardId: Int = 1) {
        
        if let url = Bundle.main.url(forResource: "awards", withExtension: "json") {
            
            if let data = try? Data(contentsOf: url) {
                
                if let parsed = try? JSONDecoder().decode([Winner].self, from: data) {
                    self.awardWinners = parsed.filter {
                        $0.award == awardId
                    }
                }
                
            }
            
        }
    }
    
    func updateWinners(by id: Int) {
        fetch(by: id)
    }
    
}
