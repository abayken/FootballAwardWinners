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
    
    @Published var awards: [Award] = []
    
    
    
    init() {
        fetch()
    }
    
    private func fetch(by awardId: Int = 1) {
        
        if let url = Bundle.main.url(forResource: "awards", withExtension: "json") {
            
            if let data = try? Data(contentsOf: url) {
                
                if let parsed = try? JSONDecoder().decode([Award].self, from: data) {
                    
                    awards = parsed.filter {
                        $0.id == awardId
                    }
                    
                }
                
            }
            
        }
    }
    
    func updateWinners(by id: Int) {
        fetch(by: id)
    }
    
}
