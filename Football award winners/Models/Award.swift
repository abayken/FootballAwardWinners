//
//  Award.swift
//  Football award winners
//
//  Created by Abay on 29.01.2020.
//  Copyright © 2020 football. All rights reserved.
//

import Foundation

struct Award: Codable, Identifiable {
    
    let id: Int
    let year: Int
    let winner: Winner
    let prize: [PrizeWinner]
    
}
