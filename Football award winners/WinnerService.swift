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
    
    private func fetch() {
        awardWinners.append(Winner(id: 1, fullName: "Leo Messi", imageName: "leo", yearWon: "2019", description: "Best in the world"))
        awardWinners.append(Winner(id: 2, fullName: "Luka Modric", imageName: "lula", yearWon: "2018", description: "The yeat another genius"))
        awardWinners.append(Winner(id: 3, fullName: "Sergio Aguero", imageName: "leo", yearWon: "2011", description: "One of the best strikers"))
    }
    
}
